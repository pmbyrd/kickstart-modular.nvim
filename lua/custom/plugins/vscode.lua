-- Runs vscode only plugins
-- This file should be loaded after all other plugins
-- It should not run in neovim
-- First start off with neovim keybindings
if vim.g.vscode then
  local vscode = vim.g.vscode
  local test = vscode.get_status_item 'test'
  test.text = 'hello'
  test.text = 'testing from inside the vscode plugin'
else
  print 'Not in vscode'
end
return {}
