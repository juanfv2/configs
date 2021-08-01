local configs = require 'lspconfig/configs'
local util = require 'lspconfig/util'

local server_name = "diagnosticls"
local bin_name = "diagnostic-languageserver"

-- 
local filetypes = {
  typescript = "eslint",
  typescriptreact = "eslint",
}
local linters = {
  eslint = {
      sourceName = "eslint",
      command = "eslint_d",
      rootPatterns = {".eslintrc.js", "package.json"},
      debounce = 100,
      args = {"--stdin", "--stdin-filename", "%filepath", "--format", "json"},
      parseJson = {
          errorsRoot = "[0].messages",
          line = "line",
          column = "column",
          endLine = "endLine",
          endColumn = "endColumn",
          message = "${message} [${ruleId}]",
          security = "severity"
      },
      securities = {[2] = "error", [1] = "warning"}
  }
}
local formatters = {
  prettier = {command = "prettier", args = {"--stdin-filepath", "%filepath"}}
}
local formatFiletypes = {
  typescript = "prettier",
  typescriptreact = "prettier"
}
--

configs[server_name] = {
  default_config = {
    cmd = {bin_name, "--stdio"},
    filetypes = vim.tbl_keys(filetypes),
    root_dir = util.path.dirname,
    init_options = {
      filetypes = filetypes,
      linters = linters,
      formatters = formatters,
      formatFiletypes = formatFiletypes
  }
  },
  docs = {
    description = [[
https://github.com/iamcco/diagnostic-languageserver

Diagnostic language server integrate with linters.
]];
    default_config = {
      filetypes = "Empty by default, override to add filetypes",
      root_dir = "Vim's starting directory";
      init_options = "Configuration from https://github.com/iamcco/diagnostic-languageserver#config--document";
    };
  };
}