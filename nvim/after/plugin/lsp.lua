local nvim_lsp_present, nvim_lsp = pcall(require, "lspconfig")

if not nvim_lsp_present then
  print("nvim-lspconfig not found")
  return
end

local protocol = require('vim.lsp.protocol')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  --buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  --buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
end

protocol.CompletionItemKind = {
  '', -- Text
  '', -- Method
  '', -- Function
  '', -- Constructor
  '', -- Field
  '', -- Variable
  '', -- Class
  'ﰮ', -- Interface
  '', -- Module
  '', -- Property
  '', -- Unit
  '', -- Value
  '', -- Enum
  '', -- Keyword
  '﬌', -- Snippet
  '', -- Color
  '', -- File
  '', -- Reference
  '', -- Folder
  '', -- EnumMember
  '', -- Constant
  '', -- Struct
  '', -- Event
  'ﬦ', -- Operator
  '', -- TypeParameter
}

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').default_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

nvim_lsp.flow.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

-- haskell
nvim_lsp.hls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "haskell" },
}

-- astro
-- nvim_lsp.astro.setup {
--   on_attach = on_attach,
--   capabilities = capabilities
-- }

-- prisma
nvim_lsp.prismals.setup{
  on_attach = on_attach,
  capabilities = capabilities
}

-- tailwindcss
-- nvim_lsp.tailwindcss.setup {
--   on_attach = on_attach,
--   capabilities = capabilities
-- }

-- rust
nvim_lsp.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      inlay_hints = {
        rust = {
          enabled = false
        }
      }
    }
  }
}

-- typescript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}

nvim_lsp.sourcekit.setup {
  on_attach = on_attach,
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  update_in_insert = false,
  virtual_text = { spacing = 4, prefix = "●" },
  severity_sort = true,
}
)

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●'
  },
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})

-- im sorry but im going to put everything lsp related together
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
    "rust_analyzer",
    "tsserver",
    "prismals",
    "hls",
  },
}
