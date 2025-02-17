return {
  "j-hui/fidget.nvim",
  opts = {
    -- Options related to LSP progress subsystem
    progress = {
      suppress_on_insert = true,   -- Suppress new messages while in insert mode
      ignore_done_already = true,  -- Ignore new tasks that are already complete
      ignore_empty_message = true, -- Ignore new tasks that don't contain a message
    },

    -- Options related to notification subsystem
    notification = {
      override_vim_notify = true,  -- Automatically override vim.notify() with Fidget
    },
  },
  config = function()
    require("telescope").load_extension("fidget")
  end
}
