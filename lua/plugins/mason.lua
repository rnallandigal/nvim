---@type LazySpec
return {
  {
    "williamboman/mason.nvim",
    opts = {
      max_concurrent_installers = 8,
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "clangd",
        "bashls",
        "ts_ls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      ensure_installed = { "stylua", "shfmt" },
    },
  },
}
