nnoremap <Leader>p :lua require'telescope-projfiles'.project_files()<cr>
nnoremap <Leader>fp :Telescope file_browser<cr>
nnoremap <Leader>ff :lua require'telescope.builtin'.find_files()<cr>
nnoremap <Leader>fc :Telescope git_commits<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fw <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>tt <cmd>lua require('telescope.builtin').colorscheme() <cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
nnoremap <leader>to :TodoTelescope<cr>
