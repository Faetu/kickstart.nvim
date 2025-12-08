vim.keymap.set('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.keymap.set('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
vim.keymap.set('n', '<M-Left>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<M-Right>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<M-Down>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<M-Up>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set(
  'n',
  '<space>e',
  ':lua vim.diagnostic.open_float(nil, { focus = false })<CR>',
  { desc = 'Open lsp [E]rror message in floating window', noremap = true, silent = true }
)
vim.keymap.set('n', '<space>q', ':lua vim.diagnostic.setqflist({open = true})<CR>', { desc = 'Open [Q]uickfix list', noremap = true, silent = true })
