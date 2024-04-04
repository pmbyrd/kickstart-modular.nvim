-- NOTE: Plugins can also be configured to run Lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VimEnter'
--
-- which loads which-key before all the UI elements are loaded. Events can be
-- normal autocommands events (`:help autocmd-events`).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
  -- NOTE add on from initial modular neovim config -- Legendary
  {
    'mrjones2014/legendary.nvim',
    keys = {
      { '<C-S-p>', '<cmd>Legendary<cr>', desc = 'Legendary' },
      { '<leader>hc', '<cmd>Legendary<cr>', desc = 'Command Palette' },
    },
    opts = {
      which_key = { auto_register = true },
    },
  },
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    -- NOTE add in the dependencies
    dependencies = {
      'mrjones2014/legendary.nvim',
    },
    event = 'VimEnter', -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').register {
        ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
        ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
        ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
        ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
        ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
        ['<leader>f'] = { name = '[F]ile', _ = 'which_key_ignore' },
        t = { name = 'test', h = { print 'hello' } },
        { prefix = '<leader>' },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
