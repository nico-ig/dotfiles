return {
  {
    'nvim-telescope/telescope-ui-select.nvim',
    configs = function()
      require("telescope").setup({})
    end,
  },
  {
    'Shatur/neovim-session-manager',
    config = function()
      local config = require('session_manager.config')
      require('session_manager').setup({
        autoload_mode = { config.AutoloadMode.GitSession, config.AutoloadMode.CurrentDir }
      })

      -- Auto save session
      local session_manager = require('session_manager')
      vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
        callback = function ()
          for _, buf in ipairs(vim.api.nvim_list_bufs()) do
            -- Don't save while there's any 'nofile' buffer open.
            if vim.api.nvim_get_option_value("buftype", { buf = buf }) == 'nofile' then
              return
            end
          end
          session_manager.save_current_session()
        end
      })

      require("telescope").load_extension("ui-select")

      require("which-key").add({
        {"<leader>s", group = "[S]ession", icon = ""},
        {"<leader>ss", ":lua require('session_manager').save_current_session()<CR>", desc = "[S]ave [S]ession", mode = "n"},
        {"<leader>sl", ":lua require('session_manager').load_session()<CR>", desc = "[L]oad [S]ession", mode = "n"},
        {"<leader>sd", ":lua require('session_manager').delete_session()<CR>", desc = "[D]elete [S]ession", mode = "n"},
      })
    end
  }
}
