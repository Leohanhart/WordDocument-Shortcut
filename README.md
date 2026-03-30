<p align="center">
  <img src="WordFastLogo.png" alt="WordFast — keyboard-first Word documents in Windows File Explorer" width="520" />
</p>

# Instant Word — keyboard‑first Word documents in File Explorer

<p align="center">
  <a href="https://www.microsoft.com/windows/windows-11" title="Built for Windows 11">
    <img src="https://img.shields.io/badge/Windows-11-0078D6?style=for-the-badge&logo=windows11&logoColor=white" alt="Windows 11 — compatible productivity tool for File Explorer" />
  </a>
  <a href="#install-autohotkey-v2" title="Install AutoHotkey v2 (hotkey engine)">
    <img src="https://img.shields.io/badge/AutoHotkey-v2-648293?style=for-the-badge&logo=autohotkey&logoColor=white" alt="AutoHotkey v2 — download and install for custom hotkeys" />
  </a>
  <a href="#hotkeys-at-a-glance" title="Keyboard hotkeys in WordFast">
    <img src="https://img.shields.io/badge/Hotkeys-Ctrl%20%2B%20Shift-512BD4?style=for-the-badge&logo=keyboard&logoColor=white" alt="Hotkeys — Ctrl+Shift shortcuts in File Explorer" />
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
- **AutoHotkey v2** — see [Install AutoHotkey v2](#install-autohotkey-v2) (this is what runs your **hotkeys**; there is no separate “Hotkeys” app to install)  
- **Microsoft Word** (needed the first time to create `empty.docx`, and for opening/editing the files afterward)

---

## Install AutoHotkey v2

WordFast’s **Ctrl+Shift+D** shortcut is implemented with [**AutoHotkey v2**](https://www.autohotkey.com/): free, open-source hotkey and automation tooling for Windows. Install it once, then keep **`Create Word.ahk`** running (or compile it to an `.exe`).

### Download and install (English)

1. Open **[autohotkey.com](https://www.autohotkey.com/)** and choose **Download** (official installer).  
2. Run the installer and select **AutoHotkey v2** when asked. This repo uses v2 only (`#Requires AutoHotkey v2.0` in the script).  
3. After setup, double-click **`Create Word.ahk`**. If Windows asks which program to use, pick **AutoHotkey v2**.  
4. (Optional) To start the script with Windows: place a shortcut in the Startup folder (`Win+R` → `shell:startup`) or use Task Scheduler.

### Documentation

| Resource | Link |
|----------|------|
| **Home & download** | [https://www.autohotkey.com/](https://www.autohotkey.com/) |
| **AutoHotkey v2 docs** | [https://www.autohotkey.com/docs/v2/](https://www.autohotkey.com/docs/v2/) |
| **Getting started** | [https://www.autohotkey.com/docs/v2/Welcome.htm](https://www.autohotkey.com/docs/v2/Welcome.htm) |
| **Hotkeys (`::`)** | [https://www.autohotkey.com/docs/v2/Hotkeys.htm](https://www.autohotkey.com/docs/v2/Hotkeys.htm) |

### Installatie (Nederlands)

1. Ga naar **[autohotkey.com](https://www.autohotkey.com/)** → **Download** en voer het officiële installatieprogramma uit.  
2. Kies **AutoHotkey v2** (niet versie 1 — dit project is alleen v2).  
3. Dubbelklik daarna op **`Create Word.ahk`** om de hotkeys te activeren.  
4. Uitgebreide uitleg (Engels): **[AutoHotkey v2-documentatie](https://www.autohotkey.com/docs/v2/)** en **[pagina over hotkeys](https://www.autohotkey.com/docs/v2/Hotkeys.htm)**.

---

## Setup

1. Install **AutoHotkey v2** (see [Install AutoHotkey v2](#install-autohotkey-v2)).  
2. Save or clone this repo where you like (the script path does not have to match your documents folder).  
3. Run **`Create Word.ahk`** (or compile it and run the executable).  
4. Open **File Explorer**, focus the folder you want, press **Ctrl+Shift+D**.

---

## SEO / discovery notes (for maintainers)

*Suggested GitHub repository description (≈160 characters):*  
**AutoHotkey Windows 11 File Explorer shortcut: Ctrl+Shift+D creates blank Word .docx from a Downloads template — keyboard-only, power-user workflow.**

*Topics / tags to add on GitHub:* `autohotkey`, `windows-11`, `file-explorer`, `keyboard-shortcuts`, `microsoft-word`, `docx`, `productivity`, `ahk-v2`, `power-user`, `cli-style`.
