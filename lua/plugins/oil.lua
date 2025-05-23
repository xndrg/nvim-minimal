return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  lazy = false,
  config = function()
    require("oil").setup({
      columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
      },
      skip_confirm_for_simple_edits = true,
    })
  end
}
