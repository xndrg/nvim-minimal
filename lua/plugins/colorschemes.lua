return {
  {
    "eemed/sitruuna.vim",
    lazy = false,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
  },
  {
    "AlessandroYorba/Alduin",
    lazy = false,
  },
  {
    "blazkowolf/gruber-darker.nvim",
    lazy = false,
    config = function()
      require("gruber-darker").setup({
        bold = false,
        italic = {
          strings = false,
          comments = true,
          operators = false,
          folds = false,
        }
      })
    end
  },
  {
    "p00f/alabaster.nvim",
    lazy = false,
  },
  {
    "RRethy/base16-nvim",
    lazy = false,
  }
}
