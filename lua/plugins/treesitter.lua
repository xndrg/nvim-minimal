return {
  "nvim-treesitter/nvim-treesitter",
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })()
  end,
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        "c", "cpp", "lua", "rust", "zig",
        "javascript", "typescript", "tsx",
      },

      sync_install = false,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      indent = {
        enable = true,
      },
    })
  end,
}
