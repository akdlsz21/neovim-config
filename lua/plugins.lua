
-- plugins.lua

-- Initialize packer.nvim
require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Add leap.nvim
  use 'ggandor/leap.nvim'

  -- Add more plugins here as needed
end)

-- Configure leap.nvim
require('leap').add_default_mappings()
