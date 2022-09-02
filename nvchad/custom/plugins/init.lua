-- custom/plugins/init.lua has to return a table
-- THe plugin name is github user or organization name/reponame

return {
  ["goolord/alpha-nvim"] = { disable = false, },
  
  ["neovim/nvim-lspconfig"] = {
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
  },

  ["dstein64/nvim-scrollview"] = {
    config = function ()
      require('scrollview').setup({
        excluded_filetypes = {'nerdtree'},
        current_only = true,
        winblend = 0,
        base = 'right',
      })
    end
  }
}
