-- bootstrap packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1',
      'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- theme
  use 'rose-pine/neovim'

  -- telescope + deps
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- harpoon
  use 'theprimeagen/harpoon'

  -- statusline
  use 'nvim-lualine/lualine.nvim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)

-- leader
vim.g.mapleader = " "

-- telescope keymaps (your replacements)
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files)   -- space f f
vim.keymap.set('n', '<leader>sg', builtin.live_grep)    -- space s g

-- harpoon
local harpoon = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', '<leader>a', harpoon.add_file)      -- add file
vim.keymap.set('n', '<leader>h', ui.toggle_quick_menu)  -- menu

-- quick jump (insanely useful)
vim.keymap.set('n', '<leader>1', function() ui.nav_file(1) end)
vim.keymap.set('n', '<leader>2', function() ui.nav_file(2) end)
vim.keymap.set('n', '<leader>3', function() ui.nav_file(3) end)
vim.keymap.set('n', '<leader>4', function() ui.nav_file(4) end)

-- lualine
require('lualine').setup {
  options = { theme = 'rose-pine' }
}

-- theme
vim.cmd('colorscheme rose-pine')

-- basics
vim.opt.number = true
vim.opt.relativenumber = true
