return {
  'luckasRanarison/nvim-devdocs',
  enabled = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  opts = {},

  dir_path = vim.fn.stdpath 'data' .. '/devdocs', -- installation directory
  telescope = {}, -- passed to the telescope picker
  float_win = { -- passed to nvim_open_win(), see :h api-floatwin
    relative = 'editor',
    height = 25,
    width = 100,
    border = 'rounded',
  },
  wrap = false, -- text wrap, only applies to floating window
  previewer_cmd = nil, -- for example: "glow"
  cmd_args = {}, -- example using glow: { "-s", "dark", "-w", "80" }
  cmd_ignore = {}, -- ignore cmd rendering for the listed docs
  picker_cmd = false, -- use cmd previewer in picker preview
  picker_cmd_args = {}, -- example using glow: { "-s", "dark", "-w", "50" }
  mappings = { -- keymaps for the doc buffer
    open_in_browser = '',
  },
  ensure_installed = {
    'lua',
    'python',
    'javascript',
    'typescript',
    'rust',
    'bash',
    'markdown',
    'react',
    'css',
    'bootstrap',
    'html',
    'nodejs',
    'nodejs_en',
    'treesitter',
    'ruby',
    'sql',
    'postgresql',
    'javascriptreact',
    'json',
  }, -- get automatically installed
  after_open = function(bufnr) end, -- callback that runs after the Devdocs window is opened. Devdocs buffer ID will be passed in
  cmd = {
    'DevdocsFetch',
    'DevdocsInstall',
    'DevdocsUninstall',
    'DevdocsOpen',
    'DevdocsOpenFloat',
    'DevdocsOpenCurrent',
    'DevdocsOpenCurrentFloat',
    'DevdocsUpdate',
    'DevdocsUpdateAll',
  },
}
