local M = {}
-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "sweetpastel",
  transparency = true,
}

M.plugins = {
  user = require "custom.plugins",
  override = {
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "html",
        "css",
        "typescript",
        "javascript",
        "tsx",
        "json",
        "jsdoc",
        "glimmer",
      },
    },
    ["goolord/alpha-nvim"] = {
      header = {
        val = {
          "                                                     ",
          "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
          "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
          "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
          "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
          "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
          "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
          "                                                     ",
        },
      },
    },
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "emmet-ls",
        "json-lsp",
        "prettier",

        -- shell
        "shellcheck",
      },
    },
  },
}

return M
