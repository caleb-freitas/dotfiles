local M = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

M.nmap = bind("n", {noremap = false})

-- normal mode
M.nnoremap = bind("n")

-- visual mode
M.vnoremap = bind("v")

-- visual block mode
M.xnoremap = bind("x")

-- insert mode
M.inoremap = bind("i")

return M
