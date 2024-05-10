return {
	"lervag/vimtex",
	config = function()
		vim.g.tex_flavor = 'latex'
		vim.g.vimtex_view_method='zathura'
		vim.g.vimtex_quickfix_mode=0
		vim.o.conceallevel = 2
		vim.g.tex_conceal = 'abdmg'
		vim.g.vimtex_fold_enabled = 0
		vim.o.fillchars = 'fold: '
		--vim.g.vimtex_mappings_disable = {
		--	n = { 'cse', 'csc', 'cs$', 'csd', 'tsf', 'tsc', 'tse', 'tsd', 'tsD', 'ts$'},
		--	x = { 'tsf', 'tsd', 'tsD' } }

		--local vimtexGrp = vim.api.nvim_create_augroup("vimrc_tex", { clear = true })
		--local cmd = function(mode, lhs, rhs, desc)
		--	local plug = '<plug>(' .. rhs .. ')'
		--	vim.api.nvim_create_autocmd("FileType", {
		--		pattern = "tex",
		--		group = vimtexGrp,
		--		callback = function()
		--			vim.keymap.set(mode, lhs, plug, { buffer = true, silent = true, desc = desc })
		--		end
		--		-- command = "nmap <buffer><silent> lse <plug>(vimtex-env-change)"
		--	})
		--end
		--cmd('n',' lse', 'vimtex-env-change')
		--cmd('n', 'lsc', 'vimtex-cmd-change')
		--cmd('n',' ls$', 'vimtex-env-change-math')
		--cmd('n', 'lsd', 'vimtex-delim-change-math')
		--cmd('n', 'jsf', 'vimtex-cmd-toggle-frac')
		--cmd('x', 'jsf', 'vimtex-cmd-toggle-frac')
		--cmd('n', 'jsc', 'vimtex-cmd-toggle-star')
		--cmd('n', 'jse', 'vimtex-env-toggle-star')
		--cmd('n', 'jsd', 'vimtex-delim-toggle-modifier')
		--cmd('x', 'jsd', 'vimtex-delim-toggle-modifier')
		--cmd('n', 'jsD', 'vimtex-delim-toggle-modifier-reverse')
		--cmd('x', 'jsD', 'vimtex-delim-toggle-modifier-reverse')
		--cmd('n', 'js$', 'vimtex-env-toggle-math')
	end
}
