return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  config = function()
    local ls = require("luasnip")
    vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
    require("luasnip.loaders.from_snipmate").lazy_load()
  end
}
