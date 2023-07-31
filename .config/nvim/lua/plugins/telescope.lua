local setKey = vim.keymap.set
local builtin = require('telescope.builtin')

setKey('n', '<leader>ff', builtin.find_files, {})
setKey('n', '<leader>fg', builtin.live_grep, {})
setKey('n', '<leader>fb', builtin.buffers, {})
setKey('n', '<leader>fh', builtin.help_tags, {})
