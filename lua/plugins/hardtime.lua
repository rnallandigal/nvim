---@type LazySpec
return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    restricted_keys = {
      ["h"] = {},
      ["j"] = {},
      ["k"] = {},
      ["l"] = {},
      ["-"] = {},
      ["+"] = {}
    },
    -- TODO: disable hardtime in undotree
    disabled_filetypes = { "neo-tree", "undotree_2", "difftree_3" },
    disabled_keys = {
      ["<Up>"] = { "" },
      ["<Down>"] = { "" },
      ["<Left>"] = { "" },
      ["<Right>"] = { "" },
    }
  }
}
