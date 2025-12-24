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
      cmake = { 'cmake_lint' },
      cpp = { 'cpplint' },
      docker = { 'hadolint' },
      fish = { 'fish' },
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
    }

    vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
      callback = function()
        -- try_lint without arguments runs the linters defined in `linters_by_ft`
        -- for the current filetype
        require('lint').try_lint()

        -- You can call `try_lint` with a linter name or a list of names to always
        -- run specific linters, independent of the `linters_by_ft` configuration
        require('lint').try_lint 'codespell'
      end,
    })
  end,
}
