local Remap = require("caleb.utils")
local nnoremap = Remap.nnoremap
local builtin = require("telescope.builtin")

nnoremap("<C-p>", ":Telescope")

nnoremap("ff", builtin.find_files, {})
nnoremap("fg", builtin.git_files, {})
nnoremap("fb", builtin.buffers, {})
nnoremap("fh", builtin.help_tags, {})
nnoremap("lg", builtin.live_grep, {})
