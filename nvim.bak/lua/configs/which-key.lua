local wk = require("which-key")
local mappings = {
    l = {
        name = "LSP",
        A = {':lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
        a = {':lua vim.lsp.buf.code_action()<CR>', "Code actions"},
        D = {':lua vim.lsp.buf.type_definition()<CR>', "Type definition"},
        e = {':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', "Show line diagnostics"},
        f = {':lua vim.lsp.buf.formatting()<CR>', "Format file"},
        i = {":LspInfo<cr>", "Connected Language Servers"},
        q = {':lua vim.lsp.diagnostic.set_loclist()<CR>', "Show loclist"},
        l = {':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
        R = {':lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
        r = {':lua vim.lsp.buf.rename()<CR>', "Rename"}
    },
    f = {
        name = "File",
        w = {':Startify<CR>', "Startify"},
        a = {':lua vim.lsp.buf.add_file_watch()<CR>', "Add file watch"},
        d = {':lua vim.lsp.buf.definition()<CR>', "Definition"},
        D = {':lua vim.lsp.buf.declaration()<CR>', "Declaration"},
        e = {':lua vim.lsp.buf.execute_command()<CR>', "Execute command"},
        f = {':lua vim.lsp.buf.formatting()<CR>', "Format file"},
    },
    t = {
        name = "TDD",
        t = {':TestNearest<cr>', "Test nearest"},
        f = {':TestFile<cr>', "Test file"},
        a = {':TestSuite<cr>', "Test suite"},
        l = {':TestLast<cr>', "Test last"},
        g = {':TestVisit<cr>', "Test Visit"},
    },
    d = {
        name = "Debug",
        b = {':lua require\'dap\'.toggle_breakpoint()<cr>', 'Toggle breakpoint'},
        n = {':lua require\'dap\'.continue()<cr>', 'Debug continue'},
        m = {':lua require\'configs.dap-fn\'.stop()<cr>', 'Debug stop'},
        i = {':lua require\'dap\'.step_into()<cr>', 'Debug step into'},
        o = {':lua require\'dap\'.step_over()<cr>', 'Debug step over'},
        u = {':lua require\'dap\'.step_out()<cr>', 'Debug step out'},
        g = {':lua require\'dap\'.repl.toggle()<cr>', 'Debug REPL toggle'},
        s = {':lua require\'configs.dap-fn\'.scopes()<cr>', 'Debug Scopes'},
        a = {':lua require\'configs.dap-fn\'.fullscopes()<cr>', 'Debug Full Scopes'},
        l = {':lua require\'dap\'.list_breakpoints()<cr>', 'List Breakpoints'},
        c = {':lua require\'dap\'.clear_breakpoints()<cr>', 'Clear Breakpoints'},
        r = {':lua require\'dap\'.run_to_cursor()<cr>', 'Run to cursor'},
        t = {':lua require\'dap-go\'.debug_test()<cr>', 'Debug test'},
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
