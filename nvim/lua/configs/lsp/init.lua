local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {
    'solargraph',
    'tsserver', 
    'html', 
    'cssls',
    -- 'sumneko_lua',
    'vimls',
}
for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup { capabilities = capabilities }
end
