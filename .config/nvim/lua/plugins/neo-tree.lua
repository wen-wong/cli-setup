return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    local tree = require("neo-tree")
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>")
    tree.setup({
      enable_git_status = true,
      enable_diagnostics = true,
      default_component_configs = {
        modified = {
          symbol = "[+]",
          highlight = "NeoTreeModified",
        },
        git_status = {
          symbols = {
            added     = "",
            modified  = "",
            deleted   = "✖",
            renamed   = "󰁕", 
            untracked = "",
            ignored   = "",
            unstaged  = "󰄱",
            staged    = "",
            conflict  = "",
          }
        },
      },
    })
  end
}
