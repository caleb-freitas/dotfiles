local autopairs_present, autopairs = pcall(require, "nvim-autopairs")

if not autopairs_present then
	vim.notify("autopairs not found!")
	return
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
