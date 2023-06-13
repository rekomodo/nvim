return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	---[[
	use {
		'sirver/ultisnips',
		---[[
		config = function()
			vim.g.UltiSnipsExpandTrigger = '<tab>'
			vim.g.UltiSnipsJumpForwardTrigger = '<tab>'
			vim.g.UltiSnipsJumpBackwardTrigger = '<s-tab>'
		end,
		--]]
	}
	--]]

	use {
		'lervag/vimtex',
		---[[
		setup = function()
			vim.g.vimtex_view_method = 'zathura'
			vim.g.vimtex_quickfix_mode = 0
			vim.opt.cole=2
			vim.g.vimtex_syntax_conceal = {math_super_sub = 0}
		end,
		--]
	}

	use 'dylanaraps/wal'

	---[[
	use {
		'shougo/deoplete.nvim',
		config = function()
			vim.g['deoplete#enable_at_startup'] = 1
		end,
	}
	--]]

    use 'nvim-lua/popup.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/telescope.nvim'
    use 'jremmen/vim-ripgrep'
end)
