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
vim.opt.undodir = vim.fn.expand('~') .. "/.nvim-undo"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50

vim.g.netrw_browse_split = 0

vim.cmd("autocmd FileType lua :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType html :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType javascript :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType typescript :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType javascriptreact :setlocal sw=2 ts=2 sts=2")
vim.cmd("autocmd FileType typescriptreact :setlocal sw=2 ts=2 sts=2")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.keymap.set("n", "<C-h>", ":w<CR>:!python %<CR>", {buffer = true, silent = true})
  end
})

vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")
vim.keymap.set("v", "+", "<C-a>gv")
vim.keymap.set("v", "-", "<C-x>gv")
vim.keymap.set("n", "<leader>e", vim.cmd.Oil)
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>y", "_y$$")
vim.keymap.set("n", "<C-t>", "F<yf>f>pF<a/<Esc>hi")
vim.keymap.set("i", "<C-t>", "<Esc>F<yf>f>pF<a/<Esc>hi")
-- vim.keymap.set("n", "<C-w>e", ":.lua<CR>")
-- vim.keymap.set("v", "<C-w>e", ":lua<CR>")
vim.keymap.set("v", "<M-w>", "\"+y")
vim.keymap.set("n", "<C-y>", "\"+p")

vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)

-- Emacs like indentation
-- Pressing TAB in any mode indents current line or selection
vim.keymap.set("n", "<Tab>", "==")
vim.keymap.set("x", "<Tab>", "=")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "",
  callback = function()
    local current_buffer = vim.api.nvim_get_current_buf()
    vim.api.nvim_buf_set_keymap(current_buffer, "i", "<Tab>", "<C-f>", { noremap = true, silent = true })
  end
})

-- vim.opt.cursorline = false
-- vim.opt.relativenumber = false
-- vim.opt.number = false
-- vim.cmd([[
--   set laststatus=0
--   hi! link StatusLine Normal
--   hi! link StatusLineNC Normal
--   set statusline=%{repeat('─',winwidth('.'))}
-- ]])
