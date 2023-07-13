return {
  { "olimorris/neotest-phpunit" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-phpunit"] = {
          args = { "--stop-on-failure" },
          root_files = { "composer.json", "phpunit.xml", ".gitignore" },
          filter_dirs = { ".git", "node_modules", "vendor" },
        },
      },
      status = { virtual_text = true },
      output = { open_on_run = true },
      quickfix = {
        open = function()
          if require("lazyvim.util").has("trouble.nvim") then
            vim.cmd("Trouble quickfix")
          else
            vim.cmd("copen")
          end
        end,
      },
    },
  },
}
