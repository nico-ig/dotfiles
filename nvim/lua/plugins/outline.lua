return {
  "hedyhli/outline.nvim",
  lazy = true,
  cmd = { "Outline", "OutlineOpen" },
  keys = { -- Example mapping to toggle outline
    { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
  },
  opts = {
    -- Your setup opts here
  },
  config = function()
    require("outline").setup({})
    require("which-key").add({
      { "<leader>o", group = "[O]utline" },
      { "<leader>ot", "<cmd>Outline<CR>", desc = "[T]oggle", mode = "n" }
    })
  end,
}
