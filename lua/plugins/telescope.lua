---@type LazySpec
return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults.mappings.i["<Esc>"] = require("telescope.actions").close
  end,
}
