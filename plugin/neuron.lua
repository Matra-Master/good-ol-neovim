-- these are all the default values
--require'neuron'.setup {
--    virtual_titles = true,
--    mappings = true,
--    run = nil, -- function to run when in neuron dir
--    neuron_dir = "~/Notes", -- the directory of all of your notes, expanded by default (currently supports only one directory for notes, find a way to detect neuron.dhall to use any directory)
--}

-- Import & assign the map() function from the utils module
--local buffmap = require("utils").buffmap

--map(mode, custom keybind, existing command or keybind to customize, opts)
--buffmap('n', '', '')
--buffmap('n', '', '', {})

-- create a new note
--nnoremap <buffer> gzn <cmd>lua require'neuron/cmd'.new_edit(require'neuron'.config.neuron_dir)<CR>
--buffmap('n', '<Leader>gz', [[<cmd>lua require'neuron/cmd'.new_edit(require'neuron'.config.neuron_dir)<CR>]] )

-- click enter on [[my_link]] or [[[my_link]]] to enter it
--nnoremap <buffer> <CR> <cmd>lua require'neuron'.enter_link()<CR>

-- find your notes, click enter to create the note if there are not notes that match
--nnoremap <buffer> gzz <cmd>lua require'neuron/telescope'.find_zettels()<CR>
--buffmap('n', '<Leader>gz', "<cmd>lua require'neuron/telescope'.find_zettels()<CR>" )

-- insert the id of the note that is found
--nnoremap <buffer> gzZ <cmd>lua require'neuron/telescope'.find_zettels {insert = true}<CR>

-- find the backlinks of the current note all the note that link this note
--nnoremap <buffer> gzb <cmd>lua require'neuron/telescope'.find_backlinks()<CR>

-- same as above but insert the found id
--nnoremap <buffer> gzB <cmd>lua require'neuron/telescope'.find_backlinks {insert = true}<CR>

-- find all tags and insert
--nnoremap <buffer> gzt <cmd>lua require'neuron/telescope'.find_tags()<CR>

-- start the neuron server and render markdown, auto reload on save
--nnoremap <buffer> gzs <cmd>lua require'neuron'.rib {address = "127.0.0.1:8200", verbose = true}<CR>

-- go to next [[my_link]] or [[[my_link]]]
--nnoremap <buffer> gz] <cmd>lua require'neuron'.goto_next_extmark()<CR>

-- go to previous
--nnoremap <buffer> gz[ <cmd>lua require'neuron'.goto_prev_extmark()<CR>]]
