-- typescript or hypescript
require'lspconfig'.tsserver.setup{}

--svelte
require'lspconfig'.svelte.setup{}

--css
require'lspconfig'.cssls.setup{}

--golang
require'lspconfig'.gopls.setup{}

--rust
require'lspconfig'.rls.setup{}

-- lua
local fn = vim.fn

-- NOTE: I USED LSPINSTALL SO I HAD TO FIND WHERE THE FUCK BINARY WAS LOCATED
local sumneko_install_path = fn.stdpath('data') .. '/lspinstall/lua/'
local sumneko_binary = sumneko_install_path .. 'sumneko-lua-language-server'
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.lua')
table.insert(runtime_path, 'lua/?/init.lua')

require('lspconfig').sumneko_lua.setup({
	cmd = { sumneko_binary, '-E', sumneko_install_path .. '/main.lua' },
	settings = {
		Lua = {
			runtime = {
				-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
				version = 'LuaJIT',
				-- Setup your lua path
				path = runtime_path,
			},
			diagnostics = {
				-- Get the language server to recognize the `vim` global
				globals = { 'vim' },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file('', true),
			},
			-- Do not send telemetry data containing a randomized but unique identifier
			telemetry = {
				enable = false,
			},
		},
	},
})

require'lspconfig'.tailwindcss.setup{}
