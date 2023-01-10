local mason_ok, mason = pcall(require, "mason")

if not mason_ok then
  return
end

mason.setup()

require "user.lsp.mason"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
