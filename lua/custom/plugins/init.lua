-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.g.have_nerd_font = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

require 'kickstart.plugins.debug'
require 'kickstart.plugins.autopairs'
require 'kickstart.plugins.gitsigns'

return {
  {
    'neovim/nvim-lspconfig',
    opts = function(_, opts)
      opts.servers = opts.servers or {}

      local my_servers = {
        ['arduino-language-server'] = {},
        ['asm-lsp'] = {},
        ['bash-language-server'] = {},
        basedpyright = {},
        ['basics-language-server'] = {},
        clangd = {},
        ['cmake-language-server'] = {},
        ['docker-compose-language-service'] = {},
        ['dockerfile-language-server'] = {},
        ['gh-actions-language-server'] = {},
        ['json-lsp'] = {},
        ['language-server-bitbake'] = {},
        ['lua-language-server'] = {},
        marksman = {},
        ['rust-analyzer'] = {},
        taplo = {},
        yamlls = {},
        ['wasm-language-tools'] = {},
        ['yaml-language-server'] = {},
      }

      for name, config in pairs(my_servers) do
        opts.servers[name] = opts.servers[name] or config
      end

      return opts
    end,
  },

  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}

      vim.list_extend(opts.ensure_installed, {
        'actionlint',
        'asmfmt',
        'checkmake',
        'clang-format',
        'cmakelang',
        'codespell',
        'cpplint',
        'gitleaks',
        'gitlint',
        'hadolint',
        'isort',
        'jsonlint',
        'luacheck',
        'markdownlint',
        'oelint-adv',
        'ruff',
        'shellcheck',
        'shfmt',
        'stylua',
        'yamlfmt',
        'yamllint',
      })

      return opts
    end,
  },

  {
    'stevearc/conform.nvim',
    opts = function(_, opts)
      opts.format_on_save = false
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      local my_formatters = {
        lua = { 'stylua' },
        python = { 'isort', 'ruff' },
        cpp = { 'clang-format' },
        c = { 'clang-format' },
        cmake = { 'cmakelang' },
        markdown = { 'markdownlint' },
        sh = { 'shfmt' },
        wasm = { 'wasm-language-tools' },
        yaml = { 'yamlfmt' },
      }

      for ft, formatters in pairs(my_formatters) do
        opts.formatters_by_ft[ft] = formatters
      end

      return opts
    end,
  },
}

