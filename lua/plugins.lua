return require("packer").startup(function(use)
  use "wbthomason/packer.nvim"

  -- Colorschemes
  use "vague2k/vague.nvim"
  use "ramojus/mellifluous.nvim"
  use "datsfilipe/vesper.nvim"
  use "mellow-theme/mellow.nvim"
  use "sainnhe/gruvbox-material"
  use "kyazdani42/blue-moon"
  use "darkvoid-theme/darkvoid.nvim"
  use "RRethy/base16-nvim"

  use "neovim/nvim-lspconfig"
  use { "nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"} }
  use "ntpeters/vim-better-whitespace"

  use "theprimeagen/harpoon"
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    requires = {{"nvim-lua/plenary.nvim"}}
  }
end)
