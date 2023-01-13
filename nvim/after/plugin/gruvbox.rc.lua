local gruvbox_present, gruvbox = pcall(require, "gruvbox")

if not gruvbox_present then
	vim.notify("gruvbox not found!")
	return
end

gruvbox.setup({
  italic = false,
  contrast = "medium"
})

vim.cmd("colorscheme gruvbox")
