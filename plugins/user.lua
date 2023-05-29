return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    config = function()
      require("catppuccin").setup {}
    end
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "hkupty/iron.nvim",
    lazy = false,
    config = function()
      require("iron.core").setup {
        config = {
          scratch_repl = true,
          repl_definition = {
            jl = {
              command = { "julia" }
            },
          },
          repl_open_cmd = require("iron.view").bottom(20),
        },
        keymaps = {
          send_motion = "<leader>rm",
          visual_send = "<leader>rs",
          send_file = "<leader>rf",
          send_line = "<leader>rl",
          send_mark = "<leader>rM",
          mark_motion = "<leader>rL",
          mark_visual = "<leader>rm",
          remove_mark = "<leader>rd",
          cr = "<leader>r<space>",
          interrupt = "<leader>rI",
          exit = "<leader>rq",
          clear = "<leader>rc",
        },
        highlight = {
          italic = true
        },
        ignore_blank_lines = true,
      }
    end
  }
  --
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
