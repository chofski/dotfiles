local utils = require('utils')

-- utils.map('n', '<C-l>', '<Cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>') -- jk to escape
utils.map('n', '<Leader>tt', '<Cmd>15sp +term<CR>')
utils.map('n', '<Leader>fq', '<Cmd>q<CR>')
utils.map('n', '<Leader>fsf', '<Cmd>w<CR>')
utils.map('n', '<C-w><C-o>', ':MaximizerToggle!<CR>')

utils.map('t', '<C-w><C-o>', '<C-\\><C-n> :MaximizerToggle!<CR>')
utils.map('t', '<C-h>', '<C-\\><C-n><C-w>h')
utils.map('t', '<C-j>', '<C-\\><C-n><C-w>j')
utils.map('t', '<C-k>', '<C-\\><C-n><C-w>k')
utils.map('t', '<C-l>', '<C-\\><C-n><C-w>l')
utils.map('t', 'jk', '<C-\\><C-n>')

-- Find files using Telescope command-line sugar.
utils.map('n', '<Leader>ff', '<cmd>Telescope find_files<cr>')
utils.map('n', '<Leader>fg', '<cmd>Telescope live_grep<cr>')
utils.map('n', '<Leader>fb', '<cmd>Telescope buffers<cr>')
utils.map('n', '<Leader>fh', '<cmd>Telescope help_tags<cr>')

-- Bufferline
utils.map('n', '<Leader>]', '<cmd>:BufferLineCycleNext<cr>')
utils.map('n', '<Leader>[', '<cmd>:BufferLineCyclePrev<cr>')

-- copy any selected text with pressing y
utils.map('', '<leader>c', '"+y')

-- OPEN TERMINALS --
utils.map('n', '<C-l>', '<Cmd>vnew term://zsh <CR>', opt) -- open term over right
utils.map('n', '<C-x>', '<Cmd> split term://zsh | resize 10 <CR>', opt) -- open term bottom

-- COPY EVERYTHING --
utils.map('n', '<C-a>', '<Cmd> %y+<CR>', opt)
