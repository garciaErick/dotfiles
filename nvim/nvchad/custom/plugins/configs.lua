-- custom/plugins/configs.lua file

local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"javascript",
		"java",
		"typescript",
		"json",
		"html",
		"css",
		"lua",
		"markdown",
		"c",
		"bash",
		"python",
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"deno",
		"emmet-ls",
		"json-lsp",
		"prettier",
		"eslint-lsp",

		-- shell
		"shellcheck",
		"shfmt",

		-- java
		"jdtls",
	},
}

M.nvimTree = {
	git = {
		enable = true,
	},
	view = {
		side = "right",
		width = 20,
	},
}

M.alpha = {
	header = {
		val = {
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████  ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████      ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████          ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████              ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒██████████████████████████████      ████████████████████████████████▒▒▒",
			"▒▒▒▒██        ██    ████████    ██      ██    ██████████    ██        ██▒▒▒",
			"▒▒████        ██      ██████    ██      ██      ██████      ██        ██▒▒▒",
			"▒▒██    ██    ██        ████    ██      ██        ██        ██    ████████▒",
			"▒▒██    ██    ██          ██    ██      ██                  ██          ██▒",
			"████          ██    ██          ██      ██    ██      ██    ██          ██▒",
			"██            ██    ████        ██      ██    ████  ████    ██    ██████████",
			"██    ████    ██    ██████      ██      ██    ██████████    ██            ██",
			"██    ████    ██    ████████    ██      ██    ██████████    ██            ██",
			"██████████████████████████████████      ████████████████████████████████████",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                  ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████              ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████          ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████      ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒████  ████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
			"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒",
		},
	},
}

-- you cant directly call a module in chadrc thats related to the default config
-- Thats because most probably that module is lazyloaded
-- In this case its 'cmp', we have lazyloaded it by default
-- So you need to make this override field a function, instead of a table
-- And the function needs to return a table!

M.cmp = function()
	local cmp = require("cmp")

	return {
		mapping = {
			["<C-d>"] = cmp.mapping.scroll_docs(-8),
		},
	}
end

return M
