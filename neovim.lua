return {
	{
		"bjarneo/aether.nvim",
		branch = "v3",
		name = "aether",
		priority = 1000,
		opts = {
			colors = {
				bg = "#000000",
				dark_bg = "#000000",
				darker_bg = "#000000",
				lighter_bg = "#000000",

				fg = "#f6b389",
				dark_fg = "#b98667",
				light_fg = "#f7be9b",
				bright_fg = "#f8c6a7",
				muted = "#433c3c",

				red = "#418fd7",
				yellow = "#db5f0c",
				orange = "#418fd7",
				green = "#75553d",
				cyan = "#f6b389",
				blue = "#ec850c",
				purple = "#ec850c",
				brown = "#386085",

				bright_red = "#ec850c",
				bright_yellow = "#db5f0c",
				bright_green = "#c52a21",
				bright_cyan = "#bb825d",
				bright_blue = "#ec850c",
				bright_purple = "#9c7151",

				accent = "#c52a21",
				cursor = "#f6b389",
				foreground = "#f6b389",
				background = "#000000",
				selection = "#000000",
				selection_foreground = "#f6b389",
				selection_background = "#000000",
			},
		},
		-- set up hot reload
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}
