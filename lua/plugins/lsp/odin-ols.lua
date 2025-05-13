-- odin lang configuration
return {
  recommended = {
    ft = "odin",
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = { ols = { cmd = { "/opt/ols/ols" }, filetypes = { "odin" } } },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "odin" } },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      notify_on_error = false,
      -- Odinfmt gets its configuration from odinfmt.json. It defaults
      -- writing to stdout but needs to be told to read from stdin.
      formatters = {
        odinfmt = {
          -- Change where to find the command if it isn't in your path.
          command = "/opt/ols/odinfmt",
          args = { "-stdin" },
          stdin = true,
        },
      },
      -- and instruct conform to use odinfmt.
      formatters_by_ft = {
        odin = { "odinfmt" },
      },
    },
  },
}
