return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.completion.luasnip,
				null_ls.builtins.diagnostics.sqlfluff.with({
					extra_args = { "--dialect", "postgres" }, -- change to your dialect
				}),
                null_ls.builtins.diagnostics.buf,
                null_ls.builtins.diagnostics.codespell,
                null_ls.builtins.diagnostics.dotenv_linter,
                null_ls.builtins.diagnostics.golangci_lint,
				null_ls.builtins.formatting.codespell,
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.sqlfluff.with({
					extra_args = { "--dialect", "postgres" }, -- change to your dialect
				}),
                null_ls.builtins.formatting.sql_formatter,
                null_ls.builtins.formatting.gofmt,
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.formatting.golines,
                null_ls.builtins.formatting.nginx_beautifier,
                null_ls.builtins.formatting.protolint,
                null_ls.builtins.formatting.yamlfix,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
