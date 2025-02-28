---@type LazySpec
return {
  "AstroNvim/astrocore",

  opts = function(_, opts)
    -- Custom Options --
    --------------------
    opts.options.opt = vim.tbl_deep_extend("force", opts.options.opt, {
      wrap = true, -- display lines as one long line
      scrolloff = 8, -- minimal number of screen lines to keep above and below the cursor
      clipboard = "unnamedplus", -- Connection to the system clipboard
    })

    -- Custom keymaps --
    --------------------
    local map = { i = {}, n = {}, v = {}, t = {} }

    -- Move text up and down
    map.i["<A-j>"] = { "<Esc>:m .+1<CR>==gi", desc = "move line down" }
    map.i["<A-k>"] = { "<Esc>:m .-2<CR>==gi", desc = "move line up" }
    map.n["<A-j>"] = { ":m .+1<CR>==", desc = "move line down" }
    map.n["<A-k>"] = { ":m .-2<CR>==", desc = "move line up" }
    map.v["<A-j>"] = { ":m '>+1<CR><Bar>gv=gv", desc = "move line down" }
    map.v["<A-k>"] = { ":m '<-2<CR><Bar>gv=gv", desc = "move line up" }

    -- Stay in indent mode
    map.v["<"] = { "<gv", desc = "indent left" }
    map.v[">"] = { ">gv", desc = "indent right" }

    -- Don't copy existing text when pasting
    map.v["p"] = { '"_dP', desc = "" }

    -- scroll quarter page up / down
    map.n["<M-u>"] = { "10k", desc = "move cursor up 10 lines" }
    map.n["<M-d>"] = { "10j", desc = "mode cursor down 10 lines" }

    -- Plugins --
    -------------
    -- undotree
    map.n["<leader>o"] = { ":UndotreeToggle<CR>", desc = "open undotree" }

    -- telescope
    map.n["<C-d>"] = {
      function()
        require("telescope.builtin").buffers({ ignore_current_buffer = true, sort_mru = true })
      end,
      desc = "Find buffers",
    }
    map.n["<C-f>"] = {
      function()
        require("telescope.builtin").find_files()
      end,
      desc = "Find files",
    }

    -- modifications to default keymaps
    local utils = require("utils/utils")
    local remap = { i = {}, n = {}, v = {}, t = {} }
    remap.n["<leader>fb"] = utils.NIL
    remap.n["<leader>ff"] = "<leader>fF"
    remap.n["<leader>fF"] = utils.NIL

    opts.mappings = utils.tbl_deep_extend_with_remap(opts.mappings, map, remap)
  end,
}
