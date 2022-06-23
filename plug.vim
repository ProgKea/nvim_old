if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has('nvim')
  " Appearance
  Plug 'overcache/NeoSolarized'
  Plug 'folke/tokyonight.nvim'
  Plug 'gruvbox-community/gruvbox'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-icons'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'

  " Lsp
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'onsails/lspkind-nvim'

  Plug 'ThePrimeagen/harpoon'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  Plug 'sbdchd/neoformat'
  Plug 'mbbill/undotree'
endif
call plug#end()
