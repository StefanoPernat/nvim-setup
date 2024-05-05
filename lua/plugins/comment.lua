return {
	"terrortylor/nvim-comment",
	config = function()
		require("nvim_comment").setup({
			marker_padding = true,
			hook = nil,
		})

		vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>", {})
	end,
}
