local autopairs_present, autopairs = pcall(require, "nvim-autopairs")
local autotag_present, autotag = pcall(require, "nvim-ts-autotag")

if not autopairs_present then
	vim.notify("autopairs not found!")
	return
end

if not autotag_present then
  vim.notify("nvim-ts-autotag not found!")
  return
end

autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

autotag.setup({})
