vim.cmd.colorscheme "default"
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.guicursor = ""
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.cursorline = true
vim.opt.background = "dark"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/nvim-undo"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- vim.cmd("set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<")
-- vim.cmd("set list")
vim.cmd("autocmd FileType lua :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType html :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType javascript :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType typescript :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType javascriptreact :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType typescriptreact :setlocal sw=2 ts=2 sts=2")

vim.keymap.set("n", "<leader>e", vim.cmd.Explore)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("i", "<Tab>", "<C-f>")
vim.keymap.set("n", "<Tab>", "==")
vim.keymap.set("v", "<Tab>", "=")
vim.keymap.set("n", "<leader>y", "_y$$")
vim.keymap.set("n", "<C-t>", "F<yf>f>pF<a/<Esc>hi")
vim.keymap.set("i", "<C-t>", "<Esc>F<yf>f>pF<a/<Esc>hi")
