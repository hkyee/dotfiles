-- Makes comments easier

return {
	-- Installation script
	"numToStr/Comment.nvim",
	opts = {
		-- add any options here
	},
	-- Other options

	-- Ensures plugin load immediately
	lazy = false,
	config = function()
		require("Comment").setup()
	end,
}
