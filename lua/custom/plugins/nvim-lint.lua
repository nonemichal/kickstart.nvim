return {
  'mfussenegger/nvim-lint',
  config = function()
    local lint = require 'lint'

    -- Define linters for each filetype
    lint.linters_by_ft = {
      asm = { 'asmfmt' },
      api = { 'api-linter' },
      bash = { 'shellcheck', 'shfmt' },
      bitbake = { 'oelint-adv' },
      c = { 'cpplint' },
      cmake = { 'cmakelang' },
      cpp = { 'cpplint' },
      docker = { 'hadolint' },
      git = { 'gitlint' },
      hadolint = { 'hadolint' },
      html = { 'htmlhint' },
      json = { 'jsonlint' },
      lua = { 'luacheck' },
      makefile = { 'checkmake' },
      markdown = { 'markdownlint' },
      python = { 'ruff' },
      systemd = { 'systemdlint' },
      webassembly = { 'wasm-language-tools' },
      yaml = { 'yamllint', 'actionlint' },
      ['*'] = { 'codespell', 'gitleaks', '' },
    }

    -- Automatically run linters on file save
    -- vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    --   callback = function()
    --     lint.try_lint()
    --   end,
    -- })
  end,
}
