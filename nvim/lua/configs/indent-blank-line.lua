local indent_blankline_setup, indent_blankline = pcall(require, "indent_blankline")
if not indent_blankline_setup then
    return
end

vim.opt.list = true
vim.opt.listchars:append("space:⋅")

indent_blankline.setup({
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
    space_char_blankline = " ",
    filetype_exclude = {"startify", "packer"}
})
