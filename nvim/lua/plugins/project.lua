return {
  "coffebar/neovim-project",
  opts = {
    projects = {
      "~/projects/*",
      "~/dotfiles/*"
    },
    picker = {
      type = "telescope",
    }
  },
  init = function()
    vim.opt.sessionoptions:append("globals")
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "nvim-telescope/telescope.nvim", tag = "0.1.4" },
    { "Shatur/neovim-session-manager" },
  },
  lazy = false,
  priority = 100,
  configs = vim.defer_fn(function ()
    require("which-key").add({
      {"<leader>l", group = "Project [L]oader", icon = "󱧭"},
      {"<leader>ld", ":NeovimProjectDiscover<CR>", desc = "[D]iscover", mode = "n"},
      {"<leader>lh", ":NeovimProjectHistory<CR>", desc = "Recent [H]istory", mode = "n"},
      {"<leader>lp", ":NeovimProjectLoadRecent<CR>", desc = "[P]revious session", mode = "n"},
    })
  end, 0)
}
