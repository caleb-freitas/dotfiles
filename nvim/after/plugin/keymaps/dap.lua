local Remap = require("caleb.utils")
local nmap = Remap.nnoremap

nmap("<leader>dc", "<cmd>lua require'dap'.continue()<cr>")
nmap("<leader>dl", "<cmd>lua require'dap'.run_last()<cr>")
nmap("<leader>du", "<cmd>lua require'dapui'.toggle()<cr>")
nmap("<leader>dO", "<cmd>lua require'dap'.step_out()<cr>")
nmap("<leader>di", "<cmd>lua require'dap'.step_into()<cr>")
nmap("<leader>do", "<cmd>lua require'dap'.step_over()<cr>")
nmap("<leader>dt", "<cmd>lua require'dap'.terminate()<cr>")
nmap("<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>")
nmap("<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>")
