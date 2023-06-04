return {
  "adalessa/laravel.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
  keys = {
    { "<leader>aa", ":Laravel artisan<cr>" },
    { "<leader>ar", ":Laravel routes<cr>" },
    {
      "<leader>at",
      function()
        require("laravel").app.sendToTinker()
      end,
      mode = "v",
      desc = "Laravel Application Routes",
    },
  },
  event = { "VeryLazy" },
  config = function()
    vim.treesitter.language.add("php", { path = "/Users/juan/.local/share/nvim/lazy/nvim-treesitter/parser/php.so" })
    require("laravel").setup()
    require("telescope").load_extension("laravel")
  end,
}
