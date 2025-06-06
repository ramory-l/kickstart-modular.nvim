return {
  {
    'nvim-treesitter/nvim-treesitter-context',

    config = function()
      require('treesitter-context').setup {
        max_lines = 3,
      }
    end,

    vim.keymap.set('n', '<leader>jtc', function()
      require('treesitter-context').go_to_context(vim.v.count1)
    end, { desc = '[J]ump [T]o [C]ontext', silent = true }),
  },
}
