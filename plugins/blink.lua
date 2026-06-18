if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return { -- override blink.cmp plugin
  "Saghen/blink.cmp",
  opts = {
    keymap = {
      ["<C-Right>"] = { "snippet_forward", "fallback" },
    },
  },
}
