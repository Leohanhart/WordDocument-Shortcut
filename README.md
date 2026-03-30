<p align="center">
  <img src="WordFastLogo.png" alt="WordFast — keyboard-first Word documents in Windows File Explorer" width="520" />
</p>

# Instant Word — keyboard‑first Word documents in File Explorer

<p align="center">
  <a href="https://www.microsoft.com/windows/windows-11" title="Built for Windows 11">
    <img src="https://img.shields.io/badge/Windows-11-0078D6?style=for-the-badge&logo=windows11&logoColor=white" alt="Windows 11 — compatible productivity tool for File Explorer" />
  </a>
  <a href="#hotkeys-at-a-glance" title="Global and Explorer hotkeys">
    <img src="https://img.shields.io/badge/Hotkeys-Ctrl%20%2B%20Shift-512BD4?style=for-the-badge&logo=keyboard&logoColor=white" alt="Keyboard shortcuts and hotkey-driven workflow" />
  </a>
</p>

**Instant Word** is a tiny [AutoHotkey v2](https://www.autohotkey.com/) helper for people who live in the **keyboard**, **shortcuts**, and a **CLI‑style rhythm**: stay in File Explorer, never reach for the mouse, and spin up **blank Microsoft Word** (`.docx`) files as fast as you create folders.

If your ideal workflow is *Explorer in focus → chord → new file*, this repo is for you.

---

## Who this is for

- **Power users** and developers who already navigate with **Ctrl**, **Alt**, and **Win** combinations  
- Anyone who wants a **mouse‑free**, **repeatable** way to add Word documents next to project files  
- Teams that batch‑create docs: **one hotkey, many files**, with automatic naming (`New document.docx`, `New document (2).docx`, …)

---

## Hotkeys at a glance

| Action | Shortcut | Where it comes from |
|--------|----------|---------------------|
| **New folder** | **Ctrl** + **Shift** + **N** | **Windows 11 File Explorer** (built‑in) |
| **New Word document** | **Ctrl** + **Shift** + **D** | This script — creates `.docx` in the **active Explorer folder** |

Use **Ctrl+Shift+N** to carve the folder, **Ctrl+Shift+D** to drop another Word file inside it. Repeat as often as you like — no ribbon, no right‑click parade.

---

## How it works (first run & every run)

1. **Template in Downloads** — On first use, the script ensures `%USERPROFILE%\Downloads\empty.docx` exists. If that file is missing, it starts Word invisibly once, saves a **blank** `.docx` there, then exits Word.  
2. **Copy into the current folder** — With File Explorer focused on your target directory, **Ctrl+Shift+D** **copies** that template into that folder as the next free name (`New document.docx`, `New document (2).docx`, …).  
3. **Fast iteration** — The heavy lifting is a file copy, so you can fire **multiple documents in seconds** while staying on the keyboard.

That’s the whole idea: one silent template in **Downloads**, unlimited **instant clones** wherever Explorer is pointing.

---

## Requirements

- **Windows 11** (or Windows 10 with equivalent File Explorer COM behavior)  
- **AutoHotkey v2**  
- **Microsoft Word** (needed the first time to create `empty.docx`, and for opening/editing the files afterward)

---

## Setup

1. Install **AutoHotkey v2**.  
2. Save or clone this repo where you like (the script path does not have to match your documents folder).  
3. Run **`Create Word.ahk`** (or compile it and run the executable).  
4. Open **File Explorer**, focus the folder you want, press **Ctrl+Shift+D**.

---

## SEO / discovery notes (for maintainers)

*Suggested GitHub repository description (≈160 characters):*  
**AutoHotkey Windows 11 File Explorer shortcut: Ctrl+Shift+D creates blank Word .docx from a Downloads template — keyboard-only, power-user workflow.**

*Topics / tags to add on GitHub:* `autohotkey`, `windows-11`, `file-explorer`, `keyboard-shortcuts`, `microsoft-word`, `docx`, `productivity`, `ahk-v2`, `power-user`, `cli-style`.
