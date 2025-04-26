return {
  {
    "mellow-theme/mellow.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme mellow]])
    end,
  },
  "vague2k/vague.nvim",
}
