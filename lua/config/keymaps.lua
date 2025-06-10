-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Options for the key mapping
local opts = { noremap = true, silent = true }

-- Delete the existing keymap <leader>ss in normal mode
vim.keymap.del("n", "<leader>ss")

-- Set a new keymap <leader>ss to a Telescope command
vim.keymap.set("n", "<leader>ss", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
vim.keymap.set("n", "<leader>sS", "<cmd>Telescope live_grep search_dirs=.<cr>", opts)
vim.keymap.set("n", "<leader>pp", "<cmd>Telescope projects<cr>", opts)
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep_args<cr>", opts)

-- Open in system application
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
