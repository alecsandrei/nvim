return {
	"nvim-tree/nvim-web-devicons",
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({
				-- log = { enable = true, types = { git = true } },
				filters = { dotfiles = true },
			})
		end,
	},
}
