-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Open in system applicationAdd commentMore actions
local function OpenInSystemApp()
  local file = vim.fn.expand("%:p")
  local opener

  if vim.fn.has("macunix") == 1 then
    opener = { "open", file }
  elseif vim.fn.has("unix") == 1 then
    opener = { "xdg-open", file }
  elseif vim.fn.has("win32") == 1 then
    opener = { "cmd.exe", "/c", "start", "", file }
  else
    print("Unsupported OS")
    return
  end

  vim.fn.jobstart(opener, { detach = true })
end
vim.keymap.set("n", "<leader>fo", OpenInSystemApp, { desc = "Open in system default app" })
