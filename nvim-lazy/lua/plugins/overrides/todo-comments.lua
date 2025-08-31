return {
  {
    "folke/todo-comments.nvim",
    opts = {
      keywords = {
        jektodo = {
          icon = "✓",
          color = "info",
          alt = { "JEKTODO", "JekTodo" }
        }
      }
    },
    keys = {
      {
        "<leader>jt",
        "<cmd>Trouble todo toggle filter={tag={jektodo}}<cr>",
        desc = "JekTodo (Trouble)"
      }
    }
  }
}
