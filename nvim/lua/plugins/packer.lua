vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

	use 'nvim-lua/plenary.nvim'

	use {
		'nvim-telescope/telescope.nvim', 
		branch = 'master' 
	}

	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
	}

	use { 
		'nvim-treesitter/nvim-treesitter', 
		run = ':TSUpdate' 
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}

	use 'vim-airline/vim-airline'
	use 'vim-airline/vim-airline-themes'

	use 'tpope/vim-fugitive'
	use 'tpope/vim-dispatch'

	--LANGS
	use 'rust-lang/rust.vim'

	--THEMES
	use 'savq/melange-nvim'
	use 'nightsense/carbonized'
	use 'blazkowolf/gruber-darker.nvim'

end)
