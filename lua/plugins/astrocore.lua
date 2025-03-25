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
    local maps = opts.mappings

    -- Move text up and down
    maps.i["<A-j>"] = { "<Esc>:m .+1<CR>==gi", desc = "move line down" }
    maps.i["<A-k>"] = { "<Esc>:m .-2<CR>==gi", desc = "move line up" }
    maps.n["<A-j>"] = { ":m .+1<CR>==", desc = "move line down" }
    maps.n["<A-k>"] = { ":m .-2<CR>==", desc = "move line up" }
    maps.v["<A-j>"] = { ":m '>+1<CR><Bar>gv=gv", desc = "move line down" }
    maps.v["<A-k>"] = { ":m '<-2<CR><Bar>gv=gv", desc = "move line up" }

    -- Stay in indent mode
    maps.v["<"] = { "<gv", desc = "indent left" }
    maps.v[">"] = { ">gv", desc = "indent right" }

    -- Don't copy existing text when pasting
    maps.v["p"] = { '"_dP', desc = "" }

    -- scroll quarter page up / down
    maps.n["<M-u>"] = { "10k", desc = "move cursor up 10 lines" }
    maps.n["<M-d>"] = { "10j", desc = "mode cursor down 10 lines" }

    -- Plugins --
    -------------
    -- undotree
    maps.n["<leader>o"] = { ":UndotreeToggle<CR>", desc = "open undotree" }
  end,
}
