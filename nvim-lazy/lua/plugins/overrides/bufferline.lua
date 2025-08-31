return {
	-- configure bufferline
	{
		"akinsho/bufferline.nvim",
		keys = {
			{ "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Buffer" },
			{ "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Buffer" },
		},
	},
}
