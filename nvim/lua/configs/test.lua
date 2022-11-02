-- " make test commands execute using dispatch.vim
vim.g["test#php#phpunit#executable"] = "php artisan test"
vim.g["test#strategy"] = { nearest = "neovim", file = "dispatch", suite = "basic" }
