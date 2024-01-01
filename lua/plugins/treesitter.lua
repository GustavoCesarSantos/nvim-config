return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
      ensure_installed = { 'c', 'lua', 'javascript', 'typescript', 'go', 'rust' },
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
