local dap_status, dap = pcall(require, "dap")
if not dap_status then
    return
end

local dap_go_status, dap_go = pcall(require, "dap-go")
if not dap_go_status then
    return
end

local api = vim.api

dap_go.setup()

vim.fn.sign_define("DapBreakpoint", {
    text = "⊚",
    texthl = "TodoFgFIX",
    linehl = "",
    numhl = ""
})

local dap_config = {
    -- python = require("dap.python"),
    -- go = require("dap.go"),
    -- cpp = require("dap.cpp"),
    -- c = require("dap.cpp"),
    php = require("configs.dap._php")
}

for dap_name, dap_options in pairs(dap_config) do
    dap.adapters[dap_name] = dap_options.adapters
    dap.configurations[dap_name] = dap_options.configurations
end
