local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  use ("wbthomason/packer.nvim")

  -- Colorschemes
  use("vague2k/vague.nvim")
  use("ramojus/mellifluous.nvim")
  use("datsfilipe/vesper.nvim")
  use("mellow-theme/mellow.nvim")
  use("sainnhe/gruvbox-material")
  use("kyazdani42/blue-moon")
  use("darkvoid-theme/darkvoid.nvim")
  use("RRethy/base16-nvim")

  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
  use("ntpeters/vim-better-whitespace")

  use("theprimeagen/harpoon")
  use({
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    requires = {{"nvim-lua/plenary.nvim"}}
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
