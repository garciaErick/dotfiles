-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
  theme = "tokyonight",
}

local userPlugings = require "custom.plugins"
local pluginConfigs = require "custom.plugins.configs"

M.plugins = {
  override = {
    ["williamboman/mason.nvim"] = pluginConfigs.mason,
    ["nvim-treesitter/nvim-treesitter"] = pluginConfigs.treesitter,
    ["kyazdani42/nvim-tree.lua"] = pluginConfigs.nvimTree,
  },

  user = userPlugings,
}

return M
