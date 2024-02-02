return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilites = capabilities,
      })
      lspconfig.html.setup({
        capabilites = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilites = capabilities,
      })

      vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, {desc = "Get definition"})
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.references, {desc = "Get references"})
      vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, {desc = "Code action"})
    end,
  },
}
