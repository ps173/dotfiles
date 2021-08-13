-- require'lspconfig'.sumneko_lua.setup {
--   cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
--   filetypes ="lua";
--   settings = {
--     Lua = {
--       runtime = {
--         version = 'LuaJIT',
--         path = runtime_path,
--       },
--       diagnostics = {
--         globals = {'vim'},
--       },
--       workspace = {
--         library = vim.api.nvim_get_runtime_file("", true),
--       },
--       telemetry = {
--         enable = false,
--       },
--     },
--   },
-- }

require'lspconfig'.sumneko_lua.setup {
    root_dir = vim.loop.cwd,
    settings = {
        Lua = {
            diagnostics = {
                globals = {"vim"}
            },
            workspace = {
                library = {
                    [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                    [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                },
                maxPreload = 100000,
                preloadFileSize = 10000
            },
            telemetry = {
                enable = false
            }
        }
    }
}
