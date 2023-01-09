local icons_present, icons = pcall(require, "nvim-web-devicons")

if not icons_present then
	vim.notify("nvim-web-devicons not found!")
	return
end

icons.setup {
  -- your personnal icons can go here (to override)
  -- DevIcon will be appended to `name`
  override = {
  },
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
  default = true
}