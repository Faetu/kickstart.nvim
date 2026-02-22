return {
  {
    'neovim/nvim-lspconfig',
    opts = {
      servers = {
        sourcekit = {
          cmd = { 'xcrun', 'sourcekit-lsp' },
          filetypes = { 'swift', 'objective-c', 'objective-cpp' },
          root_dir = require('lspconfig.util').root_pattern('Package.swift', '.git'),
        },
      },
    },
  },
  -- Swift syntax highlighting
  {
    'keith/swift.vim',
    ft = 'swift',
  },

  -- Enhanced Swift support
  {
    'wojciech-kulik/xcodebuild.nvim',
    dependencies = {
      'nvim-telescope/telescope.nvim',
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('xcodebuild').setup()
    end,
  },
}
