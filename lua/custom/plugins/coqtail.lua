return {
  'whonore/Coqtail',
  config = function()
    vim.g.coqtail_noimap = true
    -- vim.g.coqtail_map_prefix = 't'
    vim.keymap.set('', '<leader>ct', '<Plug>CoqNext')
  end,
}
