local capabilities = require('blink.cmp').get_lsp_capabilities()

vim.lsp.config('sourcekit', {
  cmd = { 'xcrun', 'sourcekit-lsp' },
  filetypes = { 'swift', 'objective-c', 'objective-cpp' },
  root_dir = vim.fs.root(0, {
    'Package.swift',
    '*.xcodeproj',
    '*.xcworkspace',
    '.git',
  }),
  capabilities = capabilities,
})
