require("plugins")

vim.g.mapleader = ' '
-- vim.opt.termguicolors = true
vim.opt.errorbells = false
vim.opt.smartcase = true
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.hidden = true
vim.opt.completeopt='menuone,noinsert,noselect'
vim.opt.autoindent = true
vim.opt.smartindent = true

local indent = 4
vim.opt.tabstop = indent
vim.opt.softtabstop = indent
vim.opt.shiftwidth = indent
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.signcolumn = 'yes'
vim.opt.wrap = false

-- colorscheme setup
vim.cmd('colorscheme wal')

local spell
vim.opt.spelllang='en_us'
vim.cmd('inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u')

local key_mapper = function(mode, key, result)
    vim.api.nvim_set_keymap(
        mode, 
        key, 
        result,
        {noremap = true, silent = true}
    )
end

key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')
key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'JK', '<ESC>')
key_mapper('i', 'jK', '<ESC>')
key_mapper('v', 'jk', '<ESC>')
key_mapper('v', 'JK', '<ESC>')
key_mapper('v', 'jK', '<ESC>')

key_mapper('n', '<leader>ff', ':lua require"telescope.builtin".find_files()<CR>')
key_mapper('n', '<leader>fs', ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

key_mapper('i', '<C-f>', '<Esc> :silent exec \'.!inkscape-figures create "\'.getline(\'.\').\'" "\'.b:vimtex.root.\'/figures/"\'<CR><CR>:w<CR>')
key_mapper('n', '<C-f>', ':silent exec \'!inkscape-figures edit "\'.b:vimtex.root.\'/figures/" > /dev/null 2>&1 &\'<CR><CR>:redraw!<CR>')
