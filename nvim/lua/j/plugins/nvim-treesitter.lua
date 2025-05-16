return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "rust", "go", "cpp", "javascript", "html" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },

			-- vim matchup integration
			matchup = {
				enable = true, -- mandatory, false will disable the whole extension
				disable = { "c", "ruby" }, -- optional, list of language that will be disabled
				-- [options]
				-- vim matchup integration End
			},
		})
	end,
}
