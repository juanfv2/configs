local _status, dap_virtual_text = pcall(require, "nvim-dap-virtual-text")
if not _status then
    return
end

-- https://github.com/theHamsta/nvim-dap-virtual-text

dap_virtual_text.setup()
