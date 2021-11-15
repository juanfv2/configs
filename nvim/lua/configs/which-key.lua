local wk = require("which-key")
local mappings = {
    l = {
        name = "LSP",
        A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
        a = {'<cmd>lua vim.lsp.buf.code_action()<CR>', "Code actions"},
        D = {'<cmd>lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
        e = {'<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
        f = {'<cmd>lua vim.lsp.buf.formatting()<CR>', "Format file"},
        i = {":LspInfo<cr>", "Connected Language Servers"},
        q = {'<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"},
        l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
        R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
        r = {'<cmd>lua vim.lsp.buf.rename()<CR>', "Rename"}
    },
    f = {
        name = "File",
        w = {':Startify<CR>', "Startify"},
        a = {'<cmd>lua vim.lsp.buf.add_file_watch()<CR>', "Add file watch"},
        d = {'<cmd>lua vim.lsp.buf.declaration()<CR>', "Declaration"},
        e = {'<cmd>lua vim.lsp.buf.execute_command()<CR>', "Execute command"},
        f = {'<cmd>lua vim.lsp.buf.formatting()<CR>', "Format file"},
    }
}

local options = {
    prefix = "<leader>"
}

-- As an example, we will the create following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register(mappings, options)
