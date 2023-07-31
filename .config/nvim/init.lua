-- Initial plugins
require('plugins.init-lazy')
require('plugins-setup')

-- Language server protocol
require('plugins.mason')
require('plugins.lsp-config')
require('plugins.cmp')

-- Plugins
require('plugins.treesitter')
require('plugins.luasnip')
require('plugins.kommentary')
require('plugins.terminal')
require('plugins.line')
require('plugins.formatter')
require('plugins.bufferline')

-- Base 
require('core.base')

-- Keymap
require('core.mappings')
require('plugins.telescope')
require('plugins.neotree')

-- Theme
require('core.colorscheme')
