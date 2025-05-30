return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      -- transparent = true,
      transparent = false,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },

      on_colors = function(colors)
        colors.bg = "#040a1c"
        colors.bg_dark = "#020614"
        colors.bg_dark = "#000208"
      end,
    },
  },
  --
  -- { "Shatur/neovim-ayu" },
  -- { "LazyVim/LazyVim", opts = { colorscheme = "ayu" } },
  --
  -- { "bluz71/vim-nightfly-colors" },
  -- { "LazyVim/LazyVim", opts = { colorscheme = "nightfly" } },
  --
  -- { "sekke276/dark_flat.nvim" },
  -- { "LazyVim/LazyVim", opts = { colorscheme = "dark_flat" } },
  --
  -- { "dasupradyumna/midnight.nvim", lazy = false, priority = 1000 },
  -- { "LazyVim/LazyVim", opts = { colorscheme = "midnight" } },
  --
  -- {
  --   "nyngwang/nvimgelion",
  --   config = function()
  --     -- do whatever you want for further customization~
  --   end,
  -- },
  -- { "LazyVim/LazyVim", opts = { colorscheme = "nvimgelion" } },
  --
  -- {
  --   "navarasu/onedark.nvim",
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     require("onedark").setup({
  --       style = "darker",
  --     })
  --     -- Enable theme
  --     require("onedark").load()
  --   end,
  -- },
  --
  -- {
  --   "tiagovla/tokyodark.nvim",
  --   opts = {
  --     -- custom options here
  --   },
  --   config = function(_, opts)
  --     require("tokyodark").setup(opts) -- calling setup is optional
  --     vim.cmd([[colorscheme tokyodark]])
  --   end,
  -- },
  --
  -- { "Everblush/nvim", name = "everblush" },
  -- { "LazyVim/LazyVim", opts = { colorscheme = "everblush" } }, },
  --
  -- { "LazyVim/LazyVim", opts = { colorscheme = "material" } },
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   -- opts = {
  --   opts = function(_, opts)
  --     table.insert(opts.options, {
  --       theme = "material-stealth",
  --     })
  --   end,
  --   -- },
  -- },
  -- {
  --   "marko-cerovac/material.nvim",
  --   -- event = "VeryLazy",
  --
  --   -- priority = 1000, -- make sure to load this before all the other start plugins
  --   lazy = true,
  --   opts = {
  --
  --     contrast = {
  --       terminal = false, -- Enable contrast for the built-in terminal
  --       sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
  --       floating_windows = false, -- Enable contrast for floating windows
  --       cursor_line = false, -- Enable darker background for the cursor line
  --       lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
  --       non_current_windows = true, -- Enable contrasted background for non-current windows
  --       filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
  --     },
  --
  --     styles = { -- Give comments style such as bold, italic, underline etc.
  --       comments = { --[[ italic = true ]]
  --       },
  --       strings = { --[[ bold = true ]]
  --       },
  --       keywords = { --[[ underline = true ]]
  --       },
  --       functions = { --[[ bold = true, undercurl = true ]]
  --       },
  --       variables = {},
  --       operators = {},
  --       types = {},
  --     },
  --
  --     plugins = { -- Uncomment the plugins that you use to highlight them
  --       -- Available plugins:
  --       -- "coc",
  --       -- "colorful-winsep",
  --       -- "dap",
  --       -- "dashboard",
  --       -- "eyeliner",
  --       -- "fidget",
  --       -- "flash",
  --       "gitsigns",
  --       -- "harpoon",
  --       -- "hop",
  --       -- "illuminate",
  --       -- "indent-blankline",
  --       -- "lspsaga",
  --       "mini",
  --       -- "neogit",
  --       -- "neotest",
  --       -- "neo-tree",
  --       -- "neorg",
  --       -- "noice",
  --       "nvim-cmp",
  --       -- "nvim-navic",
  --       "nvim-tree",
  --       "nvim-web-devicons",
  --       -- "rainbow-delimiters",
  --       -- "sneak",
  --       "telescope",
  --       "trouble",
  --       "which-key",
  --       "nvim-notify",
  --     },
  --
  --     disable = {
  --       colored_cursor = false, -- Disable the colored cursor
  --       borders = false, -- Disable borders between vertically split windows
  --       background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
  --       term_colors = false, -- Prevent the theme from setting terminal colors
  --       eob_lines = false, -- Hide the end-of-buffer lines
  --     },
  --
  --     high_visibility = {
  --       lighter = false, -- Enable higher contrast text for lighter style
  --       darker = true, -- Enable higher contrast text for darker style
  --     },
  --
  --     lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )
  --
  --     async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)
  --
  --     custom_colors = nil, -- If you want to override the default colors, set this to a function
  --
  --     custom_highlights = {}, -- Overwrite highlights with your own
  --   },
  --   config = function()
  --     vim.g.material_style = "deep ocean"
  --   end,
  -- },
}
