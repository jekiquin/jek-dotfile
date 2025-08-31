local open_oil = function (dir)
  local oil = require('oil')
  oil.toggle_float(dir)
end

return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    watch_for_changes = true,
    view_options = {
      show_hidden = true
    },
    float = {
      preview_split = "right"
    },
    keymaps = {
      ["<C-j>"] = "actions.preview_scroll_down",
      ["<C-k>"] = "actions.preview_scroll_up",
      ["q"] = {"actions.close", mode = "n" }
    }
  },
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  keys = {
    { "<Space>e", open_oil, desc = "Toggle Oil Float" },
    { "<Space>E", function() open_oil(vim.fn.getcwd()) end, desc = "Toggle Oil Float (Project Root)" }
  }
}
