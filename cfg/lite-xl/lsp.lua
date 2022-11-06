local lspconfig = require "plugins.lsp.config"

-- Uncomment the following blocks to enable autocompletion for lua
-- lspconfig.sumneko_lua.setup {
--     command = {
--     "~/.config/lite-xl/lua-lsp/lua-language-server",
--     "-E",
--     "~/.config/lite-xl/lua-lsp/main.lua"
--   },
--   settings = {
--      Lua = {
--        diagnostics = {
--          enable = false
--        }
--      }
--    }
--  }

-- Other lsp servers
lspconfig.nimlsp.setup()
lspconfig.gopls.setup()
lspconfig.vls.setup {
  name = 'v',
  command = { 'v', 'ls' }
}
lspconfig.zls.setup()
lspconfig.tsserver.setup {
	file_patterns = { "%.jsx?$", "%.cjs$", "%.mjs$", "%.tsx?$", "%.js$" },
}
lspconfig.dartls.setup {
  command = {"dart", "language-server", "--protocol=analyzer"}
}
lspconfig.rust_analyzer.setup()
lspconfig.rls.setup {
  name = "rls"
}

lspconfig.pylsp.setup()

