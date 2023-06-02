-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup {
      window = {
        positon = "left",
        width = 30,
      },
      source_selector = {
        winbar = false,
        statusline = false,
      },
      indent = {
        with_marker = true,
        indent_marker = "|",
        last_indent_marker = "└",
        indent_size = 2,
      },
      filesystem = {
        hide_gitignored = false,
      },
      event_handlers ={
        {
          event = "file_opened",
          handler = function (file_path)
            --autoclose
            require("neo-tree").close_all()
          end
        }
      },
      winbar = false

    }
  end,
}
