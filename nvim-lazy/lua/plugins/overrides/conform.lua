return {
	-- configure formatter
	{
		"stevearc/conform.nvim",
		opts = function()
		  return {
				formatters_by_ft = {
					lua = { "stylua" },
					javascript = { "prettier", "prettierd" },
					javascriptreact = { "prettier", "prettierd" },
					typescript = { "prettier", "prettierd" },
					typescriptreact = { "prettier", "prettierd" },
					vue = { "prettier", "prettierd" },
					css = { "prettier", "prettierd" },
					scss = { "prettier", "prettierd" },
					less = { "prettier", "prettierd" },
					html = { "prettier", "prettierd" },
					json = { "prettier", "prettierd" },
					jsonc = { "prettier", "prettierd" },
					yaml = { "prettier", "prettierd" },
					markdown = { "prettier", "prettierd" },
					["markdown.mdx"] = { "prettier", "prettierd" },
					graphql = { "prettier", "prettierd" },
					handlebars = { "prettier", "prettierd" },
					rust = { "rustfmt", lsp_format = "fallback" },
				},
			}
		end,
	},
}
