return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			mode = "buffers",
			diagnostics = "nvim_lsp",
			always_show_bufferline = true,
			separator_style = "slant",

			show_buffer_close_icons = false,
			buffer_close_icon = "X",

			modified_icon = "U",
		},
	},
}
