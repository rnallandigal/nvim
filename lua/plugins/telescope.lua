---@type LazySpec
return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    opts.defaults.mappings.i["<ESC>"] = require("telescope.actions").close
  end,
  dependencies = {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      local maps = opts.mappings
      maps.n["<C-d>"] = {
        function()
          require("telescope.builtin").buffers({ ignore_current_buffer = true, sort_mru = true })
        end,
        desc = "Find buffers",
      }
      maps.n["<C-f>"] = {
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find files",
      }
      maps.n["/"] = {
        function()
          require("telescope.builtin").current_buffer_fuzzy_find()
        end,
        desc = "Find in the current buffer",
      }
      maps.n["<leader>fs"] = {
        function()
          require("telescope.builtin").treesitter()
        end,
        desc = "Find treesitter symbols",
      }
      maps.n["<leader>fp"] = {
        function()
          require("telescope.builtin").builtin()
        end,
        desc = "Find telescope pickers",
      }
      maps.n["<leader>ff"] = {
        function()
          require("telescope.builtin").find_files({ hidden = true, no_ignore = true })
        end,
        desc = "Find all files",
      }

      maps.n["<Leader>fF"] = nil
      maps.n["<Leader>fb"] = nil
      maps.n["<Leader>fg"] = nil
    end,
  },
}
