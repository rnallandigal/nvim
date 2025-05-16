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
      pyright = {
        settings = {
          pyright = {
            -- use ruff's import organizer
            disableOrganizeImports = true,
          },
          python = {
            analysis = {
              -- exclusively use ruff for linting
              ignore = { "*" },
            },
          },
        },
      },
      ruff = {
        init_options = {
          settings = {
            logLevel = "info",
          },
        },
      },
    },
  },
}
