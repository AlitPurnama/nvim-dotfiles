return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local nls = require("null-ls")
			local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
			nls.setup({
				sources = {
					nls.builtins.formatting.stylua,
					nls.builtins.formatting.gofumpt,
					nls.builtins.formatting.goimports_reviser,
					nls.builtins.formatting.golines,
					nls.builtins.formatting.beautysh,
				},
				on_attach = function(client, bufnr)
					if client.supports_method("textDocument/formatting") then
						vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
						vim.api.nvim_create_autocmd("BufWritePre", {
							group = augroup,
							buffer = bufnr,
							callback = function()
								vim.lsp.buf.format({ timeout_ms = 2000 })
							end,
						})
					end
				end,
			})
		end,
	},
}
