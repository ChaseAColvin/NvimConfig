-- Also requires the follwing vim options set:
-- vim.opt.pumblend = 0
-- vim.opt.winblend = 0
return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-emoji" },
    },
    opts = function(_, opts)
      table.insert(opts.sources, {
        { name = "emoji" },
      })
      local cmp = require("cmp")
      opts.window = {
        completion = cmp.config.window.bordered({}),
        documentation = cmp.config.window.bordered({}),
      }
      -- Set view to follow cursor while typing
      opts.view = {
        entries = {
          follow_cursor = true,
        },
      }
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**

        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        -- bottom_search = true, -- use a classic bottom cmdline for search
        -- command_palette = true, -- position the cmdline and popupmenu together
        -- long_message_to_split = true, -- long messages will be sent to a split
        -- inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true, -- add a border to hover docs and signature help
      },
    },
  },
}
