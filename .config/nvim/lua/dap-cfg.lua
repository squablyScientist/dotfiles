-- Requires
local dap = require('dap')
local dapui = require('dapui')
local dap_python = require('dap-python')
local dap_vscode_ext = require('dap.ext.vscode')

-- Setup Debuggers
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb',
  name = 'lldb'
}

dap.adapters.gdb = {
  type = 'executable',
  command = '/usr/bin/gdb',
  name = 'gdb'
}

dap_python.setup('~/Documents/compiler/.venv/bin/python')
dap_python.test_runner = 'pytest'

dap_vscode_ext.load_launchjs(nil, { gdb = {'c', 'cpp'} })

-- Debugger keybinds
vim.keymap.set('n', '<F5>', function() dap.continue() end)
vim.keymap.set('n', '<F10>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)
vim.keymap.set('n', '<Leader>dc', function() dap.run_to_cursor() end)
vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() dap.set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function()
  dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
end)
vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
vim.keymap.set('n', '<Leader>dk', function() dap.terminate() end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function() require('dap.ui.widgets').hover() end)
vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function() require('dap.ui.widgets').preview() end)


-- Widget keybinds
local widgets = require('dap.ui.widgets')

vim.keymap.set('n', '<Leader>df', function() widgets.centered_float(widgets.frames) end)
vim.keymap.set('n', '<Leader>ds', function() widgets.centered_float(widgets.scopes) end)

-- Python Specific DAP Keybinds
vim.keymap.set('n', '<Leader>dm', function() dap_python.test_method() end)

-- DAP UI Configs
dapui.setup({
  controls = {
    icons = {
      play = "⏵",
      pause = "⏸",
      terminate = "⏹",
      run_last = "↻",
      step_into = "↷",
      step_out = "↑",
      step_over = "→",
      step_back = "←",
      disconnect = "⏏"
    }
  },
  icons = {expanded = "▼", collapsed = "▶", current_frame = "▶"}
})

-- DAP UI Keybinds
vim.keymap.set('n', '<Leader>du', function() dapui.open() end)


