-- For linting, currently not used

return {
	"dense-analysis/ale",
	-- Disabled plugin : Lazy.nvim feature
	enabled = false,
	config = function()
		-- Configuration goes here.
		local g = vim.g

		g.ale_ruby_rubocop_auto_correct_all = 1

		g.ale_linters = {
			typescript = { "ts_ls" },
			typescriptreact = { "ts_ls" },
		}
	end,
}
