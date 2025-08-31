return {
	-- configure snacks
	{
		"folke/snacks.nvim",
		opts = {
			picker = {
				hidden = true,
				ignored = true,
				sources = {
					files = {
						hidden = true,
						ignored = true,
						exclude = {
							"**/.git/*",
						},
					},
				},
			},
		},
		keys = {
			{
				"<Space>ftt",
				function()
					Snacks.terminal.toggle(nil, {
						win = {
							style = "float",
							border = vim.g.border_style or "rounded",
							padding = { 1, 2 }
						}
					})
				end,
				desc = "Toggle floating terminal",
			},
		},
	},
}
