return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        volar = {},
        zls = {},
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "vue",
        "css",
        "scss",
        "objc",
        "ocaml",
        "xml",
        "zig",
      })
    end,
  },
}
