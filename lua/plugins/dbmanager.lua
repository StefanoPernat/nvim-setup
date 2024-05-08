return {
	{ "tpope/vim-dadbod" },
	{
		"kristijanhusak/vim-dadbod-ui",
		config = function()
			vim.g.dadbod_ui = {
				window = {
					width = 0.9,
					height = 0.9,
					highlight = "Normal",
				},
			}

			vim.keymap.set("n", "<leader>db", ":DBUIToggle<CR>", {})
		end,
	},
}
