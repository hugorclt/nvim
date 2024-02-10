local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers 
require("mason").setup()
require('mason-lspconfig').setup({
	ensure_installed = {	"tsserver",
	"eslint",
	"rust_analyzer",
	"clangd",
},
handlers = {
	lsp_zero.default_setup,

	--- replace `example_server` with the name of a language server
	clangd = function()
		--- in this function you can setup
		--- the language server however you want. 
		--- in this example we just use lspconfig

		require('lspconfig').clangd.setup({
			---
			-- in here you can add your own
			-- custom configuration
			---
		})
	end,
},
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp_zero.defaults.cmp_mappings({
	['<C-k'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-j'] = cmp.mapping.select_next_item(cmp_select),
	['<C-Enter'] = cmp.mapping.confirm({ select = true }),
	['<C-Space'] = cmp.mapping.complete(),
})

lsp_zero.setup()
