return {
	{
		"bjarneo/aether.nvim",
		branch = "v3",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
			colors = {
				bg = "#130c0b",
				dark_bg = "#130c0b",
				darker_bg = "#130c0b",
				lighter_bg = "#130c0b",

				fg = "#e2a680",
				dark_fg = "#b98667",
				light_fg = "#f7be9b",
				bright_fg = "#f8c6a7",
				muted = "#685050",

				red = "#25829b",
				yellow = "#db5f0c",
				orange = "#25829b",
				green = "#75553d",
				cyan = "#e2a680",
				blue = "#d7790b",
				purple = "#d7790b",
				brown = "#386085",

				bright_red = "#d7790b",
				bright_yellow = "#db5f0c",
				bright_green = "#c52a21",
				bright_cyan = "#b07a57",
				bright_blue = "#d7790b",
				bright_purple = "#936a4c",

				accent = "#c52a21",
				cursor = "#e2a680",
				foreground = "#e2a680",
				background = "#130c0b",
				selection = "#130c0b",
				selection_foreground = "#e2a680",
				selection_background = "#130c0b",
			},
		},
		-- set up hot reload
		config = function(_, opts)
			require("aether").setup(opts)
			local c = opts.colors
			local function apply_overrides()
				vim.api.nvim_set_hl(0, "@variable", { fg = c.fg })
				vim.api.nvim_set_hl(0, "@variable.lua", { fg = c.fg })
				vim.api.nvim_set_hl(0, "@property", { fg = c.bright_cyan })
				vim.api.nvim_set_hl(0, "@property.lua", { fg = c.bright_cyan })
				vim.api.nvim_set_hl(0, "Identifier", { fg = c.bright_cyan })
				vim.api.nvim_set_hl(0, "LspReferenceWrite", { fg = c.accent, underline = true })
			end
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "aether",
				callback = apply_overrides,
			})
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
