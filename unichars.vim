" =============================================================================
" File.........: unichars.vim
" Purpose......: VIM plugin to display a set of unicode characters for copying
" Author.......: TheBlackzone <theblackzone@gmail.com>
" Created......: 2025-08-24
" Last Change..: 2025-08-24
" -----------------------------------------------------------------------------
" unichars.vim is a simple plugin that puts your most frequently used graphical
" Unicode characters right at your fingertips. If you often create text-only
" documentation or need quick access to special symbols without leaving Vim, 
" this plugin is for you. It streamlines the process of finding and inserting
" those unique characters, enhancing your workflow.
"
" How to Use
"
" Simply press <leader>A in normal mode to open a new buffer displaying your 
" curated list of Unicode characters.
" Once the character display is open:
"
"   Press c: This copies the character under the cursor to the unnamed (")
"   register and immediately closes the display window. This means you can
"   swiftly return to your document and paste the character with a
"   simple p or P.
"
"   Prefer your usual Vim commands? You can still yank any required sections
"   or individual characters using your familiar y commands.
"
"   When you're done browsing or copying, just press q to exit the character
"   display and close its window.
"
" Feel free to adjust the function s:CreateContent() to your own needs.
"
" NOTE: Correct display of the Unicode characters depends on the font you're
"       using. Not every font is capable of displaying all characters.
"
" ==============================================================================

" Exit if the plugin is already loaded or 'compatible' option is set
if exists("g:loaded_unichars_plugin") || &cp
	finish
endif
let g:loaded_unichars_plugin = 1

" We are using line continuations (maybe)
let s:cpo_sav = &cpo
set cpo&vim

set encoding=utf-8

nnoremap <leader>A	<ESC>:execute UniChars()<CR>


function! UniChars()
	exec s:CreateContent()
	exec s:DisplayContent()
endfunction

function! s:DisplayContent()
	new
	0put =s:txt
	setlocal nomodifiable
	setlocal nobuflisted
	let l:buf_num = bufnr('%')
	nnoremap <silent> <buffer> q :bd!<CR>
	nnoremap <silent> <buffer> c v"+y:bd!<CR>
endfunction

function! s:CreateContent()
	let s:txt = ''
	let s:txt = s:txt . "UNICODE CHARACTERS\n\n"
	let s:txt = s:txt . "Press:\n"
	let s:txt = s:txt . "    q = quit\n"
	let s:txt = s:txt . "    c = copy character under cursor and quit\n"
	let s:txt = s:txt . "    (or yank the required chars/lines as usual)\n"
	let s:txt = s:txt . "\n\n"
	let s:txt = s:txt . "BOX DRAWING\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "        0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F\n"
	let s:txt = s:txt . "U+250x  ─   ━   │   ┃   ┄   ┅   ┆   ┇   ┈   ┉   ┊   ┋   ┌   ┍   ┎   ┏\n"
	let s:txt = s:txt . "U+251x  ┐   ┑   ┒   ┓   └   ┕   ┖   ┗   ┘   ┙   ┚   ┛   ├   ┝   ┞   ┟\n"
	let s:txt = s:txt . "U+252x  ┠   ┡   ┢   ┣   ┤   ┥   ┦   ┧   ┨   ┩   ┪   ┫   ┬   ┭   ┮   ┯\n"
	let s:txt = s:txt . "U+253x  ┰   ┱   ┲   ┳   ┴   ┵   ┶   ┷   ┸   ┹   ┺   ┻   ┼   ┽   ┾   ┿\n"
	let s:txt = s:txt . "U+254x  ╀   ╁   ╂   ╃   ╄   ╅   ╆   ╇   ╈   ╉   ╊   ╋   ╌   ╍   ╎   ╏\n"
	let s:txt = s:txt . "U+255x  ═   ║   ╒   ╓   ╔   ╕   ╖   ╗   ╘   ╙   ╚   ╛   ╜   ╝   ╞   ╟\n"
	let s:txt = s:txt . "U+256x  ╠   ╡   ╢   ╣   ╤   ╥   ╦   ╧   ╨   ╩   ╪   ╫   ╬   ╭   ╮   ╯\n"
	let s:txt = s:txt . "U+257x  ╰   ╱   ╲   ╳   ╴   ╵   ╶   ╷   ╸   ╹   ╺   ╻   ╼   ╽   ╾   ╿\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "BLOCK ELEMENTS\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "        0   1   2   3   4   5   6   7   8   9   A   B   C   D   E   F\n"
	let s:txt = s:txt . "U+258x  ▀   ▁   ▂   ▃   ▄   ▅   ▆   ▇   █   ▉   ▊   ▋   ▌   ▍   ▎   ▏\n"
	let s:txt = s:txt . "U+259x  ▐   ░   ▒   ▓   ▔   ▕   ▖   ▗   ▘   ▙   ▚   ▛   ▜   ▝   ▞   ▟\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "ARROWS\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "◄ ▲ ▼ ►\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "←	U+2190	LEFTWARDS ARROW	\n"
	let s:txt = s:txt . "↑	U+2191	UPWARDS ARROW	\n"
	let s:txt = s:txt . "→	U+2192	RIGHTWARDS ARROW	\n"
	let s:txt = s:txt . "↓	U+2193	DOWNWARDS ARROW	\n"
	let s:txt = s:txt . "↔	U+2194	LEFT RIGHT ARROW	\n"
	let s:txt = s:txt . "↕	U+2195	UP DOWN ARROW	\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "TEMPLATES\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "┌────────────────────────────────────────────────────────────────────────────────┐\n"
	let s:txt = s:txt . "│                                                                                │\n"
	let s:txt = s:txt . "│                                                                                │\n"
	let s:txt = s:txt . "└────────────────────────────────────────────────────────────────────────────────┘\n"
	let s:txt = s:txt . "╔════════════════════════════════════════════════════════════════════════════════╗\n"
	let s:txt = s:txt . "║                                                                                ║\n"
	let s:txt = s:txt . "╟────────────────────────────────────────────────────────────────────────────────╢\n"
	let s:txt = s:txt . "╚════════════════════════════════════════════════════════════════════════════════╝\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "OTHERS\n"
	let s:txt = s:txt . "\n"
	let s:txt = s:txt . "🔴 🔵 🟠 🟡 🔲 ⬜ 🔳 🟨 ➔ ➤ ➜❎ ❎ ❀ ✵ ✹ ✴ ✰ ✶ ✋ 🂡 🚩 🚀 🞚 🞛 🞜 🞮 🞅 🞇 🞉\n"
	let s:txt = s:txt . "\n\n\n"
	let s:txt = s:txt . "REFERENCES\n"
	let s:txt = s:txt . "- https://unicode-explorer.com\n"
	let s:txt = s:txt . "- https://altcodeunicode.com/alt-codes-geometric-shape-symbols/\n"
	let s:txt = s:txt . "\n"
endfunction


" Restore cpo
let &cpo = s:cpo_sav
unlet s:cpo_sav

"<EOF>
