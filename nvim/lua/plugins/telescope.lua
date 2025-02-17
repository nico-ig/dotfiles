return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup({
      defaults = {
        layout_config = {
          prompt_position = 'top',
          horizontal = { width = 0.99, height = 0.99 }
        },
      },
    })
    local builtin = require('telescope.builtin')
    local wk = require("which-key")
    wk.add({
      { "<leader>t", group = "[T]elescope", icon = "" },
      { "<leader>tf", builtin.find_files, desc = "Find [F]iles", mode = "n" },
      { "<leader>th", builtin.help_tags, desc = "[H]elp Tags", mode = "n" },
      { "<leader>tg", builtin.live_grep, desc = "Live [G]rep", mode = "n" },
      { "<leader>tw", builtin.grep_string, desc = "Search Current [W]ord", mode = "n" },
    })
  end,
}
