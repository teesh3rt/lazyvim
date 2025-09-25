return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    lazy = true,
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Neogit" }
    }
  }
}
