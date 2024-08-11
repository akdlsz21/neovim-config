
-- Detect the operating system
local is_linux = vim.fn.has("unix") == 1 and not vim.fn.has("mac")
local is_macos = vim.fn.has("mac") == 1

-- Define key mappings based on the OS
if is_linux then
    -- Linux-specific keymaps
    vim.api.nvim_set_keymap('v', '<C-c>', '"+y', { noremap = true, silent = true })  -- Copy
    vim.api.nvim_set_keymap('n', '<C-v>', '"+p', { noremap = true, silent = true })  -- Paste in normal mode
    vim.api.nvim_set_keymap('v', '<C-v>', '"+p', { noremap = true, silent = true })  -- Paste in visual mode
elseif is_macos then
    -- macOS-specific keymaps
    vim.api.nvim_set_keymap('v', '<D-c>', '"+y', { noremap = true, silent = true })  -- Copy
    vim.api.nvim_set_keymap('n', '<D-v>', '"+p', { noremap = true, silent = true })  -- Paste in normal mode
    vim.api.nvim_set_keymap('v', '<D-v>', '"+p', { noremap = true, silent = true })  -- Paste in visual mode
end

-- center cursor after scrolling
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true })
