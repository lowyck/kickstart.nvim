return {
  'whonore/Coqtail',
  config = function()
    vim.g.coqtail_noimap = true
    -- vim.g.coqtail_map_prefix = 't'
    vim.keymap.set('', 'à', '<Plug>CoqNext')
    vim.keymap.set('', 'À', '<Plug>CoqUndo')
  end,
}
