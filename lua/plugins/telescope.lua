return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    local function find_in_buffer_dir()
      local current_buffer_dir = vim.fn.expand("%:p:h")
      print(current_buffer_dir)
      builtin.find_files({
        cwd = current_buffer_dir,
      })
    end

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fc', find_in_buffer_dir, { desc = 'Telescope find in buffer directory' })
    vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Telescope git files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end,
}
