return {
  "vim-test/vim-test",
  keys = {
    { "<leader>t", desc = "Open Test menu" },
    { "<leader>tt", ":TestNearest<CR>", desc = "Near test" },
    { "<leader>tf", ":TestFile<CR>", desc = "Last test" },
    { "<leader>ts", ":TestSuit<CR>", desc = "Suit test" },
    { "<leader>tl", ":TestLast<CR>", desc = "Last test" },
    { "<leader>tg", ":TestVisit<CR>", desc = "Visit test" },
  },
  config = function()
    vim.g["test#php#phpunit#executable"] = "php artisan test --stop-on-failure"
    vim.g["test#strategy"] = { nearest = "neovim", file = "dispatch", suite = "basic" }
  end,
}
