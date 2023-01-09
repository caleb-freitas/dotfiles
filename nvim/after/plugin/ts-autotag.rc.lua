local autotag_present, autotag = pcall(require, "nvim-ts-autotag")

if not autotag_present then
	vim.notify("nvim-ts-autotag not found!")
	return
end

autotag.setup({})