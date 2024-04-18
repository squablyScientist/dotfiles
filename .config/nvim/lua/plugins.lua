local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'tpope/vim-fugitive'
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
Plug 'nvim-neotest/nvim-nio' --dep of `nvim-dap-up`
Plug 'rcarriga/nvim-dap-ui'
Plug 'folke/neodev.nvim'

Plug('catppuccin/nvim', {as='catppuccin'})
vim.call('plug#end')
