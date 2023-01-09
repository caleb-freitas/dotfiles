local telescope_present, telescope = pcall(require, "telescope")

if not telescope_present then
	vim.notify("telescope not found!")
	return
end

local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand("%:p:h")
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd("normal vbd") end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["<C-n>"] = fb_actions.create,
          ["<C-h>"] = fb_actions.goto_parent_dir,
          ["<C-r>"] = fb_actions.rename,
          ["<C-c>"] = fb_actions.copy,
          ["<C-d>"] = fb_actions.remove,
          ["/"] = function()
            vim.cmd("startinsert")
          end
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set("n", "sf", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
