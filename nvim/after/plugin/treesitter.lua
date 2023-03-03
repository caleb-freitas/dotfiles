local ts_present, ts = pcall(require, "nvim-treesitter.configs")

if not ts_present then
	vim.notify("nvim-treesitter.configs not found!")
	return
end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "json",
    "yaml",
    "typescript",
    "css",
    "html",
    "lua",
    "rust",
    "haskell"
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
