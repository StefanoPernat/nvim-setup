-- tab configuration
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "
-- tab configuration end

-- install lazy vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- install lazy vim end



local opts = {}

-- setup plugins.lua
require("lazy").setup("plugins")
-- end setup plugins.lua

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
local builtin = require("telescope.builtin")
local treesitterconf = require("nvim-treesitter.configs")
-- setup plugins end

-- telescope config
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- remember it needs ripgrep to work
-- telescope config end

-- treesitter config
treesitterconf.setup({
  ensure_installed = {"lua", "javascript", "dockerfile", "go", "liquid", "php", "yaml", "python"},
  highlight = { enable = true },
  indent = {enable = true},

})
-- treesitter config end

-- neotree config 
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal right<CR>', {})
-- neotree config end
