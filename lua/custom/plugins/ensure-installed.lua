local ensure_installed = {}

local servers = {
  ['arduino-language-server'] = {},
  ['asm-lsp'] = {},
  ['bash-language-server'] = {},
  basedpyright = {},
  ['basics-language-server'] = {},
  clangd = {},
  ['cmake-language-server'] = {},
  ['docker-compose-language-service'] = {},
  ['dockerfile-language-server'] = {},
  ['fish-lsp'] = {},
  ['gh-actions-language-server'] = {},
  ['html-lsp'] = {},
  ['htmx-lsp'] = {},
  ['json-lsp'] = {},
  ['language-server-bitbake'] = {},
  ['lua-language-server'] = {},
  marksman = {},
  ['rust-analyzer'] = {},
  ['systemd-language-server'] = {},
  taplo = {},
  ['typescript-language-server'] = {},
  ['typos-lsp'] = {},
  -- ['uv'] = {},
  yamlls = {},
  ['wasm-language-tools'] = {},
  ['yaml-language-server'] = {},
}
vim.list_extend(ensure_installed, servers)

local linters = {
  'actionlint',
  'asmfmt',
  'api-linter',
  'checkmake',
  'cmakelang',
  'codespell',
  'cpplint',
  'gitleaks',
  'gitlint',
  'hadolint',
  'htmlhint',
  'jsonlint',
  'luacheck',
  'markdownlint',
  'oelint-adv',
  'ruff',
  'shellcheck',
  'shfmt',
  'stylua',
  'systemdlint',
  'yamlfmt',
  'yamllint',
  'qmlls',
}
vim.list_extend(servers, linters)

local formatters = {
  lua = { 'stylua' },
  python = { 'ruff' },
  cmake = { 'cmakelang' },
  markdown = { 'markdownlint' },
  sh = { 'shfmt' },
  wasm = { 'wasm-language-tools' },
  yaml = { 'yamlfmt' },
  html = { 'htmlbeautifier' },
}
vim.list_extend(ensure_installed, formatters)

local daps = {
  ['bash-debug-adapter'] = {},
  ['codelldb'] = {},
  ['cortex-debug'] = {},
  ['debugpy'] = {},
  ['js-debug-adapter'] = {},
  ['local-lua-debugger-vscode'] = {},
}
vim.list_extend(ensure_installed, daps)

return ensure_installed
