local Remap = require("caleb.keymap")

local nnoremap = Remap.nnoremap
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

-- serach for tmux sessions (not working)
-- nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

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

