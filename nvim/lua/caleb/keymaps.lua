local Remap = require("caleb.utils")

local nnoremap = Remap.nnoremap
local inoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.xnoremap

-- NORMAL MAPPING

-- split window
nnoremap("sh", ":split<Return><C-w>w")
nnoremap("sv", ":vsplit<Return><C-w>w")

-- centered scrolling
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

-- centered search
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")

-- yank into system clipboard
nnoremap("<leader>y", "\"+y")
nnoremap("<leader>Y", "\"+Y")

-- replace all words with cursor on
nnoremap("<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- VISUAL MAPPING

-- indent using angles
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- move selected lines (automatically indent)
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

-- yank into system clipboard
vnoremap("<leader>y", "\"+y")

-- VISUAL BLOCK MODE

-- keep last item copied into buffer
xnoremap("<leader>p", "\"_dP")

-- VIM ANTI-PATTERNS

inoremap("<Up>", "<Nop>")
inoremap("<Down>", "<Nop>")
inoremap("<Left>", "<Nop>")
inoremap("<Right>", "<Nop>")
inoremap("<End>", "<Nop>")
inoremap("<Insert>", "<Nop>")
inoremap("<PageUp>", "<Nop>")
inoremap("<PageDown>", "<Nop>")
inoremap("<Del>", "<Nop>")

nnoremap("<Up>", "<Nop>")
nnoremap("<Down>", "<Nop>")
nnoremap("<Left>", "<Nop>")
nnoremap("<Right>", "<Nop>")
nnoremap("<End>", "<Nop>")
nnoremap("<Insert>", "<Nop>")
nnoremap("<PageUp>", "<Nop>")
nnoremap("<PageDown>", "<Nop>")
nnoremap("<Del>", "<Nop>")

vnoremap("<Up>", "<Nop>")
vnoremap("<Down>", "<Nop>")
vnoremap("<Left>", "<Nop>")
vnoremap("<Right>", "<Nop>")
vnoremap("<End>", "<Nop>")
vnoremap("<Insert>", "<Nop>")
vnoremap("<PageUp>", "<Nop>")
vnoremap("<PageDown>", "<Nop>")
vnoremap("<Del>", "<Nop>")

xnoremap("<Up>", "<Nop>")
xnoremap("<Down>", "<Nop>")
xnoremap("<Left>", "<Nop>")
xnoremap("<Right>", "<Nop>")
xnoremap("<End>", "<Nop>")
xnoremap("<Insert>", "<Nop>")
xnoremap("<PageUp>", "<Nop>")
xnoremap("<PageDown>", "<Nop>")
xnoremap("<Del>", "<Nop>")
