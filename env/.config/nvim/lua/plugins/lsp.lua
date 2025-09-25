local root_files = {
	'.git',
}

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"stevearc/conform.nvim",
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
		},

		config = function()
			local cmp = require('cmp')
			local cmp_lsp = require("cmp_nvim_lsp")
			local capabilities = vim.tbl_deep_extend(
				"force",
				{},
				vim.lsp.protocol.make_client_capabilities(),
				cmp_lsp.default_capabilities())

			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"clangd",
				},
			})
			local cmp_select = { behavior = cmp.SelectBehavior.Select }
			cmp.setup({
				sources = {
					{ name = 'nvim_lsp' },
					{ name = 'buffer', keyword_length = 3 },
					{ name = 'luasnip', keyword_length = 2 },
				},
				mapping = {
					['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
					['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
					['<C-Space>'] = cmp.mapping.complete(),
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				},
			})

			vim.diagnostic.config({
				-- update_in_insert = true,
				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
				},
			})

			vim.keymap.set('n', 'gd', function()
				vim.lsp.buf.definition()
			end, opts)

			vim.keymap.set('n', 'K', function()
				vim.lsp.buf.hover()
			end, opts)

			vim.keymap.set('n', '<leader>vws', function()
				vim.lsp.buf.worskpace_symbol()
			end, opts)

			vim.keymap.set('n', '<leader>vd', function()
				vim.diagnostic.open_float()
			end, opts)

			vim.keymap.set('n', '[d', function()
				vim.diagnostic.goto_next()
			end, opts)

			vim.keymap.set('n', ']d', function()
				vim.diagnostic.goto_prev()
			end, opts)

			vim.keymap.set('n', '<leader>ca', function()
				vim.lsp.buf.code_action()
			end, opts)

			vim.keymap.set('n', '<leader>rf', function()
				vim.lsp.buf.references()
			end, opts)

			vim.keymap.set('n', '<leader>rn', function()
				vim.lsp.buf.rename()
			end, opts)

			vim.keymap.set('i', '<C-h>', function()
				vim.lsp.buf.signature_help()
			end, opts)
		end,
	}
}
