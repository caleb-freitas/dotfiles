local rust_present, rust = pcall(require, "rust-tools")

if not rust_present then
	vim.notify("rust-tools not found!")
	return
end

local opts = {
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rust.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rust.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
  inlay_hints = {
    auto = false  
  }
}

rust.setup(opts)
