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
      -- from https://github.com/neovim/nvim-lspconfig/tree/master/lsp
      ensure_installed = {
        "lua_ls",
        "pyright",
        "ruff",
        "clangd",
        "bashls",
        "ts_ls",
      },
    },
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = {
      -- from https://github.com/nvimtools/none-ls.nvim/tree/main/lua/null-ls/builtins/formatting
      ensure_installed = { "stylua", "shfmt" },
    },
  },
}
