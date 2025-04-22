# Neovim Minimalistic Config
Super simple and actually usable neovim config for my needs

# Requirements
- [neovim](https://github.com/neovim/neovim) >= v0.11.0
- [luals](https://github.com/LuaLS/lua-language-server) available in your `$PATH`
- [typescript-language-server](https://github.com/typescript-language-server/typescript-language-server) available in your `$PATH`
- [packer](https://github.com/wbthomason/packer.nvim) package manager installed just in case (But it should work even without it installed)

# Quickstart
Simply move all the files into your nvim config directory.\
Maybe later I'll create some script to do everything for you.\
Configuration uses default colorscheme to prevent errors since plugins are not installed on the first launch\
Run `:PackerSync` to install plugins\
Then you can change colorscheme in [options.lua](lua/options.lua)
