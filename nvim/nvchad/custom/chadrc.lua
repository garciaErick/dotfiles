-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
local activeTheme = "kanagawa"

local highlights = require("custom.highlights")
local newHighlights = highlights.new_hlgroups
local highlightOverrides = highlights.overriden_hlgroups

local userPlugings = require "custom.plugins"
local pluginConfigs = require "custom.plugins.configs"

M.ui = {
  theme = activeTheme,
  hl_add =  newHighlights,
  hl_override =  highlightOverrides,
}

M.plugins = {
  override = {
    ["williamboman/mason.nvim"] = pluginConfigs.mason,
    ["nvim-treesitter/nvim-treesitter"] = pluginConfigs.treesitter,
    ["kyazdani42/nvim-tree.lua"] = pluginConfigs.nvimTree,
    ["goolord/alpha-nvim"] = pluginConfigs.alpha,
  },

  user = userPlugings,
}

return M
