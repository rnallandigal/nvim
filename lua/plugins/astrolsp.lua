---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    ---@diagnostic disable: missing-fields
    config = {
      lua_ls = {
        settings = {
          Lua = {
            format = { enable = false },
          },
        },
      },
    },
  },
}
