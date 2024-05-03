return { 
  'nvim-treesitter/nvim-treesitter', 
  build = ':TSUpdate',
  config = function()
    local treesitterconf = require("nvim-treesitter.configs")
    -- remember it needs ripgrep to work
   
    -- treesitter config
    treesitterconf.setup({
      ensure_installed = {"lua", "javascript", "dockerfile", "go", "liquid", "php", "yaml", "python"},
      highlight = { enable = true },
      indent = {enable = true},
    })
    -- treesitter config end
  end
}
