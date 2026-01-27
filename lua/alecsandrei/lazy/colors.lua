-- Colorscheme
return {
	"ellisonleao/gruvbox.nvim",
	name = "gruvbox",
	config = function()
		require("gruvbox").setup({
			terminal_colors = true,
			undercurl = true,
			underline = true,
			bold = true,
			italic = {
				strings = true,
				emphasis = true,
				comments = true,
				operators = false,
				folds = true,
			},
			strikethrough = true,
			invert_selection = false,
			invert_signs = false,
			invert_tabline = false,
			inverse = true,
			contrast = "", -- "hard", "soft", or ""
			palette_overrides = {},
			overrides = {},
			dim_inactive = false,
			transparent_mode = true,
		})

		vim.o.background = "dark"
		vim.cmd("colorscheme gruvbox")
	end,
}
