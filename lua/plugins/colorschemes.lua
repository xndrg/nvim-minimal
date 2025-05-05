return {
  {
    "vague2k/vague.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      vim.cmd.colorscheme "vague"
    end,
  },
  "mellow-theme/mellow.nvim",
  "folke/tokyonight.nvim",
  "ramojus/mellifluous.nvim",
  "rose-pine/neovim",
  "craftzdog/solarized-osaka.nvim",
  "maxmx03/solarized.nvim",
  "luisiacc/gruvbox-baby",
  "zekzekus/menguless",
  "whatyouhide/vim-gotham",
  "blazkowolf/gruber-darker.nvim",
}
