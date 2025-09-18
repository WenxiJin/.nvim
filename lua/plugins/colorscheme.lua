-- if true then
--   return {}
-- end
return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("gruvbox").setup({
      contrast = "soft",
      palette_overrides = {
        -- Customize colors if you want
      },
    })
    vim.o.background = "light" -- Set light background
    vim.cmd([[colorscheme gruvbox]])
  end,
}
