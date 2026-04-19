return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Open git diff view" },
    { "<leader>gD", "<cmd>DiffviewClose<CR>", desc = "Close git diff view" },
    { "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", desc = "Current file history" },
    { "<leader>gH", "<cmd>DiffviewFileHistory<CR>", desc = "Repo file history" },
  },
  opts = {},
}
