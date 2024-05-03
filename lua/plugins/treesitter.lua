return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local treesitterconf = require("nvim-treesitter.configs")
    -- remember it needs ripgrep to work

    -- treesitter config
    treesitterconf.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
    -- treesitter config end
  end,
}
