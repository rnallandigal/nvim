---@type LazySpec
return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    opts.win = opts.win or {}
    opts.win.no_overlap = false
  end,
}
