local result = vim.api.nvim_exec( [[ let test#php#phpunit#executable = 'php artisan test' ]], true)

print(result) -- 'hello world'