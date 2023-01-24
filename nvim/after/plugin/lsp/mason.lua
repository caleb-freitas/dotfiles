local mason_present, mason = pcall(require, "mason")

if not mason_present then
	print("mason not found!")
	return
end

local mason_lspconfig_present, mason_lspconfig = pcall(require, "mason-lspconfig")

if not mason_lspconfig_present then
	print("mason-lspconfig not found!")
	return
end

mason.setup()

mason_lspconfig.setup {
  ensure_installed = {
    "sumneko_lua",
    "rust_analyzer",
    "tsserver",
    "prismals",
  },
}
