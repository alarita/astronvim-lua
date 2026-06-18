return {
  {
      "vinnymeller/swagger-preview.nvim",
      cmd = { "SwaggerPreview", "SwaggerPreviewStop", "SwaggerPreviewToggle" },
      build = "npm i",
      config = true,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_gitignored = false,
          hide_dotfiles = false,
        },
      },
    },
  },
  {
    "rose-pine/neovim",
  },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   build = ":Copilot auth",
  --   event = "BufReadPost",
  --   opts = {
  --     suggestion = {
  --       keymap = {
  --         accept = false, -- handled by completion engine
  --       },
  --     },
  --   },
  --   specs = {
  --     {
  --       "AstroNvim/astrocore",
  --       opts = {
  --         options = {
  --           g = {
  --             -- set the ai_accept function
  --             ai_accept = function()
  --               if require("copilot.suggestion").is_visible() then
  --                 require("copilot.suggestion").accept()
  --                 return true
  --               end
  --             end,
  --           },
  --         },
  --       },
  --     },
  --   },
  -- },
  -- {
  --   {
  --     "supermaven-inc/supermaven-nvim",
  --     version = "*",
  --     event = "VeryLazy",
  --     config = function()
  --       require("supermaven-nvim").setup({
  --         keymaps = {
  --           accept_suggestion = "<Right>",
  --         }
  --       })
  --     end,
  --   },
  -- }
}
