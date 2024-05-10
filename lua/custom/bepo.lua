local Bepo = {}

local function noremap(keys, func, opt)
	vim.keymap.set("", keys, func, opt)
end

local function onoremap(keys, func, opt)
	vim.keymap.set('o', keys, func, opt)
end

local	function inoremap(keys, func, opt)
	vim.keymap.set('i', keys, func, opt)
end

-- {W} -> [É]
-- ——————————
-- On remappe W sur É :
noremap('é',"w")
noremap('É',"W")
-- Corollaire: on remplace les text objects aw, aW, iw et iW
-- pour effacer/remplacer un mot quand on n’est pas au début (daé / laé).
onoremap('aé',"aw")
onoremap('aÉ',"aW")
onoremap('ié',"iw")
onoremap('iÉ',"iW")

-- Remaper la gestion des fenêtres
-- ———————————————————————————————
-- Pour faciliter les manipulations de fenêtres, on utilise {W} comme un Ctrl+W :
noremap('w',"<C-w>")
noremap('W',"<C-w><C-w>")
-- noremap('wt',"<C-w>j")
-- noremap('ws',"<C-w>k")
-- noremap('wc',"<C-w>h")
-- noremap('wr',"<C-w>l")
-- noremap('wd',"<C-w>c")
-- noremap('wo',"<C-w>s")
-- noremap('wp',"<C-w>o")
noremap('w<SPACE>',":split<CR>")
noremap('w<CR>',":vsplit<CR>")

-- -- [HJKL] -> {CTSR}
-- -- ————————————————
-- -- {cr} = « gauche / droite »
-- noremap('c',"h",{ nowait = true })
-- noremap('r',"l",{ nowait = true })
-- -- {ts} = « haut / bas »
-- noremap('t',"j",{ nowait = true })
-- noremap('s',"k",{ nowait = true })
-- -- {CR} = « haut / bas de l'écran »
-- noremap('C',"H",{ nowait = true })
-- noremap('R',"L",{ nowait = true })
-- -- {TS} = « joindre / aide »
-- noremap('T',"J",{ nowait = true })
-- noremap('S',"K",{nowait = true })
-- -- Corollaire : repli suivant / précédent
-- noremap('zs',"zj")
-- noremap('zt',"zk")
-- -- Corollaire : haut / bas sur wrap
-- noremap('gt',"gj")
-- noremap('gs',"gk")
-- -- Corollaire : haut / bas en mode insertion
-- inoremap('<C-g>t',"<C-g>j")
-- inoremap('<C-g>s',"<C-g>k")

-- -- {HJKL} <- [CTSR]
-- -- ————————————————
-- -- {J} = « Jusqu'à »            (j = suivant, J = précédant)
-- noremap('j',"t")
-- noremap('J',"T")
-- -- {L} = « Change »             (l = attend un mvt, L = jusqu'à la fin de ligne)
-- noremap('l',"c")
-- noremap('L',"C")
-- -- {H} = « Remplace »           (h = un caractère slt, H = reste en « Remplace »)
-- noremap('h',"r")
-- noremap('H',"R")
-- -- {K} = « Substitue »          (k = caractère, K = ligne)
-- noremap('k',"s")
-- noremap('K',"S")
-- -- Corollaire : correction orthographique
-- noremap(']k',"]s")
-- noremap('[k',"[s")

-- Fix
-- vim.keymap.del('n','ca')
-- vim.keymap.del('n','ci')

-- noremap('gj',"gt")
-- noremap('gk',"gs")

-- Désambiguation de {g}
-- —————————————————————
-- onglet précédent / suivant
noremap('gb',"gT")
noremap('gé',"gt")
-- optionnel : {gB} / {gÉ} pour aller au premier / dernier onglet
noremap('gB',':exe "silent! tabfirst"<CR>')
noremap('gÉ',':exe "silent! tablast"<CR>')
-- optionnel : {g"} pour aller au début de la ligne écran
-- noremap('g"',"g0")

-- Par rapport à wrap
-- ––––––––––––––––––

-- onoremap('t',"j")
-- onoremap('s',"k")

-- Autres réattributions
-- —————————————————————
-- inoremap('èo',"<Esc>")

noremap(';',",")
noremap(',',";")

-- noremap('à', ":noh<CR>", { silent = true })

return Bepo
