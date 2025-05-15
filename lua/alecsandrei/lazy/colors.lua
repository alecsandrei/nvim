-- Colorscheme
return {
	"ellisonleao/gruvbox.nvim",
	name = "gruvbox",
	config = function()
		vim.cmd.colorscheme("gruvbox")
		vim.o.background = "dark"
	end,
}
