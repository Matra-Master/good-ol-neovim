"
"     Neovim
"
"Navigate through splits and windows
nnoremap <silent><leader>a :wincmd h<CR>
nnoremap <silent><leader>ss :wincmd j<CR>
nnoremap <silent><leader>ww :wincmd k<CR>
nnoremap <silent><leader>d :wincmd l<CR>
nnoremap <silent><leader>e :Lexplore<CR>
nnoremap <silent><C-Right>  :wincmd l<CR>
nnoremap <silent><C-Down>   :wincmd j<CR>
nnoremap <silent><C-Up>     :wincmd k<CR>
nnoremap <silent><C-Left>   :wincmd h<CR>
nnoremap <silent><C-j>   :cnext<CR>
nnoremap <silent><C-k>   :cprevious<CR>
nnoremap <Leader><CR> :e ~/.dotfiles/nvim/.config/nvim/<CR>
"Resize splits
nnoremap <leader>= :vertical resize +5 <CR>
nnoremap <leader>- :vertical resize -5 <CR>
"Buffers list
nnoremap <Leader>bl :Buffers<CR>
nnoremap <silent><Leader>bp :b# <CR>
"Simple Split swapping
nnoremap <silent><Leader>sp <C-W>x

" Reselect visual selection after indenting
vnoremap <silent>< <gv
vnoremap <silent>> >gv
" Easy insertion of trailing ; or , from instert mode
imap ;; <Esc>A;<Esc>
imap ,, <Esc>A,<Esc>

nnoremap <silent><M-j> :m .+<CR>
nnoremap <silent><M-k> :m .--<CR>
"Greates remap ever
"Delete to void what you have selected and paste your previous yanked stuff
vnoremap <leader>p "_dP
nnoremap Y yg$
map gF :edit <cfile><cr>

"Counts the number of times a word under your cursor appears on the file
nnoremap <silent><leader>c* *<C-O>:%s///gn<CR>
"Counts the number of ocurrences of the last searched pattern in the file
nnoremap <silent><leader>c, :%s///gn<CR>
"Counts the number of ocurrences of the last searched pattern in the line
nnoremap <silent><leader>cl :s///gn<CR>

"Closing brackets and other bsh*t
inoremap " ""<left>
inoremap ";<Space> "";<Left><left>
inoremap ' ''<left>
inoremap ( ()<Left>
inoremap (<BS> (
inoremap (<Space> (  )<left><left>
inoremap () ()
inoremap (;<Space> ();<Left><Left>
inoremap (;<CR> (<CR>);<ESC>O
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap < <><Left>
inoremap <<BS> <

"
"     Fugitive
"
nnoremap <leader>gs :G<CR>
nnoremap <leader>gc :GBranches<CR>

nnoremap <leader>gf :diffget //1<CR>
nnoremap <leader>gj :diffget //2<CR>

"
"     fzf vim
"
nnoremap <silent> <leader>f :Files<cr>
"nnoremap <silent> <leader>w :W<cr>
nnoremap <silent> <leader>ri :Rg<cr>

"Homerow for important folders
nnoremap <silent> <leader>rj :Files ~/.config/<cr>
nnoremap <silent> <leader>rn :Files ~/.config/nvim<cr>

"
"     Harpoon
" I may have to touch this commands a little
"
nnoremap <leader>m :lua require("harpoon.mark").add_file()<CR>
nnoremap <leader>jj :lua require("harpoon.ui").toggle_quick_menu()<CR>
"nnoremap <leader>tc :lua require("harpoon.cmd-ui").toggle_quick_menu()<CR>

nnoremap <leader>jf :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>jd :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>js :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>ja :lua require("harpoon.ui").nav_file(4)<CR>

nnoremap <leader>jk :lua require("harpoon.tmux").gotoTerminal(1)<CR>
nnoremap <leader>jl :lua require("harpoon.tmux").gotoTerminal(2)<CR>
nnoremap <leader>ji :lua require("harpoon.tmux").sendCommand(1, 1)<CR>
nnoremap <leader>jo :lua require("harpoon.tmux").sendCommand(1, 2)<CR>

"
"     Notational fzf
"
nnoremap <silent><leader>nv :NV<CR>

"
"     TMUX
"
"Tmux new sessions and stuff
"nnoremap <silent><Leader>tn  :silent !tmux neww tmux-sessionizer<CR>
"Make the file executable right now!
nnoremap <leader>x :silent !chmod u+x %<CR>
nnoremap <silent><C-f> :silent !tmux neww tmux-sessionizer<CR>


"
"     Telescope
"
"nnoremap <silent> <leader>ri :Telescope live_grep<cr>
nnoremap <silent> <leader>t :Telescope <cr>


