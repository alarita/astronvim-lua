if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.recipes.ai" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.vue" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  -- import/override with your plugins folder
}
-- return {
--   "AstroNvim/astrocommunity",
--   { import = "astrocommunity.recipes.ai" },
-- }
