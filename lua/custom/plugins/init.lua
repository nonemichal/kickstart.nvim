-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

return {
  -- {
  --   'neovim/nvim-lspconfig',
  --
  --   dependencies = {
  --     'williamboman/mason-lspconfig.nvim',
  --     'WhoIsSethDaniel/mason-tool-installer.nvim',
  --     'stevearc/conform.nvim',
  --   },
  --   opts = {},
  --   config = function()
  --     local servers = {
  --       ['arduino-language-server'] = {},
  --       ['asm-lsp'] = {},
  --       ['bash-language-server'] = {},
  --       -- basedpyright = {},
  --       ['basics-language-server'] = {},
  --       clangd = {},
  --       ['cmake-language-server'] = {},
  --       ['docker-compose-language-service'] = {},
  --       ['dockerfile-language-server'] = {},
  --       ['fish-lsp'] = {},
  --       ['gh-actions-language-server'] = {},
  --       ['html-lsp'] = {},
  --       ['htmx-lsp'] = {},
  --       ['json-lsp'] = {},
  --       ['language-server-bitbake'] = {},
  --       ['lua-language-server'] = {},
  --       marksman = {},
  --       ['rust-analyzer'] = {},
  --       ['systemd-language-server'] = {},
  --       taplo = {},
  --       ['typescript-language-server'] = {},
  --       ['typos-lsp'] = {},
  --       -- ['uv'] = {},
  --       yamlls = {},
  --       ['wasm-language-tools'] = {},
  --       ['yaml-language-server'] = {},
  --     }
  --
  --     local ensure_installed = vim.tbl_keys(servers or {})
  --     vim.list_extend(ensure_installed, {
  --       'actionlint',
  --       'asmfmt',
  --       'api-linter',
  --       'checkmake',
  --       'cmakelang',
  --       'codespell',
  --       'cpplint',
  --       'gitleaks',
  --       'gitlint',
  --       'hadolint',
  --       'htmlhint',
  --       'jsonlint',
  --       'luacheck',
  --       'markdownlint',
  --       'oelint-adv',
  --       'ruff',
  --       'shellcheck',
  --       'shfmt',
  --       'stylua',
  --       'systemdlint',
  --       'yamlfmt',
  --       'yamllint',
  --       'qmlls',
  --     })
  --
  --     local my_formatters = {
  --       lua = { 'stylua' },
  --       python = { 'ruff' },
  --       cmake = { 'cmakelang' },
  --       markdown = { 'markdownlint' },
  --       sh = { 'shfmt' },
  --       wasm = { 'wasm-language-tools' },
  --       yaml = { 'yamlfmt' },
  --       html = { 'htmlbeautifier' },
  --     }
  --     vim.list_extend(ensure_installed, my_formatters)
  --
  --     local my_daps = {
  --       'bash-debug-adapter',
  --       'codelldb',
  --       'cortex-debug',
  --       'debugpy',
  --       'js-debug-adapter',
  --       'local-lua-debugger-vscode',
  --     }
  --     vim.list_extend(ensure_installed, my_daps)
  --
  --     require('mason-tool-installer').setup {
  --       ensure_installed = ensure_installed,
  --     }
  --
  --     local capabilities = vim.lsp.protocol.make_client_capabilities()
  --     require('mason-lspconfig').setup {
  --       automatic_installation = true,
  --       handlers = {
  --         function(server_name)
  --           local server = servers[server_name] or {}
  --           server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
  --           require('lspconfig')[server_name].setup(server)
  --         end,
  --       },
  --     }
  --   end,
  -- },

  {
    'nmac427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup {}
    end,
  },
}
