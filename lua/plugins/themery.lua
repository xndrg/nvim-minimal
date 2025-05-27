return {
  "zaldih/themery.nvim",
  lazy = false,
  config = function()
    require("themery").setup({
      themes = {
        "sitruuna",
        "sonokai",
        "alduin",
        "solarized",
        "gruber-darker",
        "alabaster",
        "quiet",
        "base16-default-dark",
        "dracula",
        "cyberdream",
        "tokyonight",
      },
      livePreview = true,
    })
  end
}
