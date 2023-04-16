-- import - plugin safely
local _status, toggleterm = pcall(require, "toggleterm")
if not _status then
    return
end

toggleterm.setup()
