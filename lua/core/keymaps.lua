local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- close buffers
keymap("n", "<C-q>", ":Bdelete<cr>", opts)

-- Better window navigation
if vim.fn.has "mac" == 1 then
  keymap("n", "<A-Left>", "<C-w>h", opts)
  keymap("n", "<A-Down>", "<C-w>j", opts)
  keymap("n", "<A-Up>", "<C-w>k", opts)
  keymap("n", "<A-Right>", "<C-w>l", opts)
else
  keymap("n", "<C-Left>", "<C-w>h", opts)
  keymap("n", "<C-Down>", "<C-w>j", opts)
  keymap("n", "<C-Up>", "<C-w>k", opts)
  keymap("n", "<C-Right>", "<C-w>l", opts)
end
-- Resize with arrows
-- keymap("n", "<C-k>", ":resize +2<CR>", opts)
-- keymap("n", "<C-j>", ":resize -2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-Left>", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "<S-Right>", ":BufferLineCycleNext<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Save
keymap("n", "<C-s>", ":w<cr>", opts)

-- Find files and strings
keymap("n", "<C-f>", ":Telescope live_grep<cr>", opts)
keymap("n", "<C-p>", ":Telescope find_files<cr>", opts)

-- Tree
keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Insert --
-- Press jk fast to exit insert mode
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

