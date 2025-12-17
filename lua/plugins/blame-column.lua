return {
  {
    "Yu-Leo/blame-column.nvim",
    cmd = "BlameColumnToggle",
    opts = {
      side = "left",
      dynamic_width = true,
      auto_width = true,
    },
    keys = {
      { "<leader>gB", "<cmd>BlameColumnToggle<cr>", desc = "Git: Blame column" },
    },
  },
}
