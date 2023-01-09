local Remap = require("caleb.keymap")
local nnoremap = Remap.nnoremap
local builtin = require("telescope.builtin")

nnoremap("<C-p>", ":Telescope")

nnoremap("ff", builtin.find_files, {})
nnoremap("fg", builtin.live_grep, {})
nnoremap("fb", builtin.buffers, {})
nnoremap("fh", builtin.help_tags, {})
