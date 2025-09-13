return {
  'mfussenegger/nvim-lint',
  config = function()
    local lint = require 'lint'

    -- Define linters for each filetype
    lint.linters_by_ft = {
      python = { 'ruff' },
      lua = { 'stylua', 'luacheck' },
      sh = { 'shellcheck', 'shfmt' },
      html = { 'htmlhint' },
      json = { 'jsonlint' },
      markdown = { 'markdownlint' },
      cmake = { 'cmakelang' },
      c = { 'clang-format', 'cpplint' },
      cpp = { 'clang-format', 'cpplint' },
      systemd = { 'systemdlint' },
      yaml = { 'yamllint', 'yamlfmt' },
      qml = { 'qmlls' },
      asm = { 'asmfmt' },
      actionlint = { 'actionlint' },
      api = { 'api-linter' },
      gitleaks = { 'gitleaks' },
      git = { 'gitlint' },
      hadolint = { 'hadolint' },
      oelint = { 'oelint-adv' },
    }

    -- Automatically run linters on file save
    -- vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
    --   callback = function()
    --     lint.try_lint()
    --   end,
    -- })
  end,
}
