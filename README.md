# `unichars.vim`: Quick Unicode Character Display and Insertion

`unichars.vim` is a simple Vim plugin that puts your most frequently used
graphical Unicode characters right at your fingertips. If you often create
text-only documentation or need quick access to special symbols without leaving
Vim, this plugin is for you. It streamlines the process of finding and inserting
those unique characters, enhancing your workflow.

## Features

* Open a new buffer with a curated list of Unicode characters using a simple keybinding.
* Easily copy the character under your cursor to the unnamed register and close the viewer with a single keystroke.
* Still allows for traditional Vim yanking for larger selections.
* Designed to be lightweight and integrate seamlessly into your existing Vim setup.

## Installation

Copy the `unichars.vim` file directly into the your Vim `plugin` directory (usually `~/.vim/plugin`)

---

## Usage

1.  **Open the Character Display**: In normal mode, press **`<leader>A`** to open a new split window displaying your list of Unicode characters.
    * (Note: The default `<leader>` key is often `\`)

2.  **Copy a Character and Close**:
    * Navigate to the character you want to copy.
    * Press `c`: This will copy the character under the cursor to the unnamed register (`"`) and immediately close the character display window. You can then paste it into your document using `p` or `P`.

3.  **Yank Multiple Characters/Sections**:
    * For larger selections, you can use standard Vim yanking commands (e.g., `yy` to yank a line, `vy` to yank visually selected text).

4.  **Exit the Display**:
    * When you're finished, simply press `q` to close the character display window.

**NOTE:** Correct display of the Unicode characters depends on the font you're using. Not every font is capable of displaying all characters.

---

## Customization

Currently, the plugin's default behavior is fixed. You can change the content that is displayed by editing the function `CreateContent()` of the plugin accordingly.
