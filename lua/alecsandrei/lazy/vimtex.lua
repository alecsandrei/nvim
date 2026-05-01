return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_view_method = "zathura"

		vim.g.vimtex_compiler_latexmk = {
			out_dir = "build",
			aux_dir = "build",
		}

		vim.api.nvim_create_autocmd("User", {
			pattern = "VimtexEventInitPost",
			callback = function()
				vim.cmd("VimtexCompile")
			end,
		})

		vim.g.vimtex_quickfix_mode = 0
	end,
}
