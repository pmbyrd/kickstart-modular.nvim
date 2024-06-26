return {
  {
    'michaelb/sniprun',
    enabled = true,
    build = 'bash ./install.sh',
    opts = {
      display = { 'Terminal' },
      live_display = { 'VirtualTextOk', 'TerminalOk' },
      selected_interpreters = { 'Python3_fifo' },
      repl_enable = { 'Python3_fifo' },
    },
    config = function(_, opts)
      require('sniprun').setup(opts)
    end,
    --stylua: ignore
    keys = {
      { "<leader>cA", function() require("sniprun.api").run_range(1, vim.fn.line("$")) end, desc = "All", },
      { "<leader>cC", function() require("sniprun.display").close_all() end, desc = "Close", },
      { "<leader>cc", function() require("sniprun").run() end, desc = "Current"},
      { "<leader>ci", function() require("sniprun").info() end, desc = "Info", },
      { "<leader>cl", function() require("sniprun.live_mode").toggle() end, desc = "Live Mode", },
      { "<leader>cp", function() require("sniprun").clear_repl() end, desc = "Clear REPL", },
      { "<leader>cr", function() require("sniprun").reset() end, desc = "Reset", },
      { "<leader>cs", function() require("sniprun").run("v") end, mode = {"v"}, desc = "Selection", },
    },
  },
}
