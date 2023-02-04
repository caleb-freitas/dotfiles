local Remap = require("caleb.utils")
local nnoremap = Remap.nnoremap
local builtin = require("telescope.builtin")

nnoremap("<C-p>", ":Telescope")

nnoremap("<leader>ff", builtin.find_files, {})
nnoremap("<leader>fg", builtin.git_files, {})
nnoremap("<leader>fb", builtin.buffers, {})
nnoremap("<leader>fh", builtin.help_tags, {})
nnoremap("<leader>lg", builtin.live_grep, {})
nnoremap("<leader>lk", builtin.keymaps, { desc = "[L]ist [K]eymaps"})
