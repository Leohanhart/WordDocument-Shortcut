#Requires AutoHotkey v2.0

; Ctrl + Shift + D
; Creates a new Word document in the currently active File Explorer folder.
^+d:: {
    ; Get the path of the active Explorer window.
    folder := GetActiveExplorerPath()
    if !folder {
        MsgBox "No active File Explorer folder found."
        return
    }

    ; Path to the empty template document in Downloads.
    ; A_Downloads does not exist in AutoHotkey v2, so we build the path manually.
    template := EnvGet("USERPROFILE") "\Downloads\empty.docx"

    ; Make sure empty.docx exists.
    ; If it does not exist yet, create it once automatically.
    EnsureEmptyDocxExists(template)

    ; Generate the next available filename:
    ; New document.docx
    ; New document (2).docx
    ; New document (3).docx
    file := GetNextDocName(folder, "New document", "docx")

    ; Copy the empty template file into the active folder.
    try FileCopy(template, file)
    catch Error as e
        MsgBox "Could not create file.`n" e.Message
}

; Ensures that empty.docx exists in Downloads.
; If it already exists, do nothing.
EnsureEmptyDocxExists(templatePath) {
    if FileExist(templatePath)
        return

    try {
        ; Start Word invisibly.
        word := ComObject("Word.Application")
        word.Visible := false

        ; Create a blank document.
        doc := word.Documents.Add()

        ; Save it as a .docx file.
        ; 16 = default Word document format (.docx)
        doc.SaveAs2(templatePath, 16)

        ; Close the document and quit Word.
        doc.Close(false)
        word.Quit()
    } catch Error as e {
        ; Try to close Word if something fails.
        try word.Quit()
        MsgBox "Could not create empty.docx in Downloads.`n" e.Message
        Exit
    }
}

; Returns the next available filename in the target folder.
GetNextDocName(folder, baseName, ext) {
    file := folder "\" baseName "." ext
    if !FileExist(file)
        return file

    i := 2
    while FileExist(folder "\" baseName " (" i ")." ext)
        i++

    return folder "\" baseName " (" i ")." ext
}

; Returns the folder path of the currently active File Explorer window.
GetActiveExplorerPath() {
    hwnd := WinActive("A")

    for window in ComObject("Shell.Application").Windows {
        try {
            if window.HWND = hwnd
                return window.Document.Folder.Self.Path
        }
    }

    return ""
}