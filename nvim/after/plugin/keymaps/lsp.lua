local Remap = require("caleb.utils")
local nnoremap = Remap.nnoremap

nnoremap("gD", "<cmd>lua vim.lsp.buf.declaration()<CR>")
nnoremap("gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
nnoremap("K", "<cmd>lua vim.lsp.buf.hover()<CR>")
nnoremap("gI", "<cmd>lua vim.lsp.buf.implementation()<CR>")
nnoremap("gr", "<cmd>lua vim.lsp.buf.references()<CR>")
nnoremap("gl", "<cmd>lua vim.diagnostic.open_float()<CR>")
nnoremap("<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>")
nnoremap("<leader>li", "<cmd>LspInfo<cr>")
nnoremap("<leader>lI", "<cmd>LspInstallInfo<cr>")
nnoremap("<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>")
nnoremap("<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>")
nnoremap("<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>")
nnoremap("<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>")
nnoremap("<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>")
nnoremap("<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>")