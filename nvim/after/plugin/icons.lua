local icons_present, icons = pcall(require, "nvim-web-devicons")

if not icons_present then
	vim.notify("nvim-web-devicons not found!")
	return
end

icons.setup {
  override = {},
  default = true
}
