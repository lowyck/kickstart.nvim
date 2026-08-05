vim.pack.add { 'https://github.com/whonore/Coqtail' }

vim.g.coqtail_noimap = true
vim.g.coqtail_treat_stderr_as_warning = 1 -- For SMT-Coq
-- vim.g.coqtail_map_prefix = 't'
vim.keymap.set('', 'à', '<Plug>CoqNext')
vim.keymap.set('', 'À', '<Plug>CoqUndo')
