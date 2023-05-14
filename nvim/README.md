# Keybinds
## Functions
`<Alt + k>` = Move to function begin (visual and normal modes).\
`<Alt + j>` = Move to function end (visual and normal modes).\
`<Space + a>` = Add space between function definition and condition (normal mode).\
`<Space + b>` = Remove space between function definition and condition (normal mode).

## Move Lines
`<S + j>` = Move lines down (visual mode).\
`<S + k>` = Move lines up (visual mode).

## Replace
`<Space + %sg>` = Replace all occurrences of a word in the file (normal mode).\
`<Space + sl>` = Replace all occurrences of a word in the line (normal and visual modes).

## Explorer
`<Space + ex>` = Open file explorer (normal mode).

## Yank
`<Ctrl + Shift + y>` = Yank to normal register (normal and visual modes).

## Comments
### Visual Mode
`gc` = Toggles the region using linewise comment\
`gb` = Toggles the region using blockwise comment

### Normal Mode
#### Linewise
`<gcc>` = Toggles the current line using linewise comment.\
`<[count]gcc>` = Toggles the number of line given as a prefix-count using linewise.\
`<gc[count]{motion}>` = (Op-pending) Toggles the region using linewise comment.\
`gcw` = Toggle from the current cursor position to the next word.\
`gc$` = Toggle from the current cursor position to the end of line.\
`gc}` = Toggle until the next blank line.\
`gc5j` = Toggle 5 lines after the current cursor position.\
`gc8k` = Toggle 8 lines before the current cursor position.\
`gcip` = Toggle inside of paragraph.\
`gca}` = Toggle around curly brackets.

#### Blockwise
`<gbc>` = Toggles the current line using blockwise comment.\
`<[count]gbc>` = Toggles the number of line given as a prefix-count using blockwise.\
`<gb[count]{motion}>` = (Op-pending) Toggles the region using blockwise comment.\
`gb2}` = Toggle until the 2 next blank line.\
`gbaf` = Toggle comment around a function (w/ LSP/treesitter support).\
`gbac` = Toggle comment around a class (w/ LSP/treesitter support).

#### Enters Insert Mode
`<gco>` = Insert comment to the next line and enters INSERT mode.\
`<gcO>` = Insert comment to the previous line and enters INSERT mode.\
`<gcA>` = Insert comment to end of the current line and enters INSERT mode.

# Plugins
    * [Comment](https://github.com/numToStr/Comment.nvim)

