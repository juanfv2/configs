-- import comment plugin safely
local _status, comment = pcall(require, "Comment")
if not _status then
    return
end

comment.setup()
