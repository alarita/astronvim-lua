if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function() vim.cmd "source ~/.config/nvim/pack/github/start/copilot.vim" end,
  },
}
