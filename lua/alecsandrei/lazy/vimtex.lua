return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_view_method = "zathura_simple"
		vim.g.vimtex_view_zathura_use_synctex = 0
		vim.g.vimtex_view_automatic = 1

		vim.g.vimtex_compiler_latexmk = {
			out_dir = "build",
			aux_dir = "build",
			callback = 1,
			continuous = 1,
		}

		vim.g.vimtex_quickfix_mode = 0

		vim.api.nvim_create_autocmd("User", {
			pattern = "VimtexEventInitPost",
			callback = function()
				vim.cmd("VimtexCompile")
			end,
		})
	end,
}
