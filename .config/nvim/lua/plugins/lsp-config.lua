-- Setup language servers.
local capabilities = vim.lsp.protocol.make_client_capabilities()
local lspconfig = require('lspconfig')

lspconfig.pylsp.setup({})
lspconfig.tsserver.setup({})
lspconfig.emmet_language_server.setup({})
lspconfig.cssls.setup({
    capabilities = capabilities
})
lspconfig.html.setup({
    capabilities = capabilities
})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>j', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)


-- Configure ElixirLS as the LSP server for Elixir.
lspconfig.elixirls.setup({
  cmd = { "/home/my-user/path-to/elixir-ls/release/language_server.sh" },
  -- on_attach = custom_attach, -- this may be required for extended functionalities of the LSP
  capabilities = capabilities,
  flags = {
    debounce_text_changes = 100,
  },
  elixirLS = {
    dialyzerEnabled = false,
    fetchDeps = false,
  };
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    local setKey = vim.keymap.set
    setKey('n', 'gD', vim.lsp.buf.declaration, opts)
    setKey('n', 'gd', vim.lsp.buf.definition, opts)
    setKey('n', 'K', vim.lsp.buf.hover, opts)
    setKey('n', 'gi', vim.lsp.buf.implementation, opts)
    setKey('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    setKey('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    setKey('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    setKey('n', '<space>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    setKey('n', '<space>D', vim.lsp.buf.type_definition, opts)
    setKey('n', '<space>rn', vim.lsp.buf.rename, opts)
    setKey({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    setKey('n', 'gr', vim.lsp.buf.references, opts)
    setKey('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})
