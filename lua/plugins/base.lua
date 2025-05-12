return {
  -- "folke/neodev.nvim",
  -- "folke/which-key.nvim",
  -- { "folke/neoconf.nvim",   cmd = "Neoconf" },
  -- { "mason-org/mason.nvim", lazy = false,   opts = {}, version = "^1.0.0"},
  -- {
  -- 	"vhyrro/luarocks.nvim",
  -- 	priority = 1000,       -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
  -- 	opts = {
  -- 		rocks = { "lua-toml" }, -- specifies a list of rocks to install
  -- 		-- luarocks_build_args = { "--with-lua=/my/path" }, -- extra options to pass to luarocks's configuration script
  -- 	},
  -- },
  -- {
  -- 	'akinsho/bufferline.nvim',
  -- 	version = "*",
  -- 	dependencies = 'nvim-tree/nvim-web-devicons',
  -- 	opts = {},
  -- },
  -- {
  -- 	'nvim-lualine/lualine.nvim',
  -- 	dependencies = { 'nvim-tree/nvim-web-devicons' },
  -- 	opts = {},
  -- },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
