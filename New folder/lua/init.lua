require("autopairs_cnf")
require("galaxy_line")
require("terminal_cnf")
require("cmp_setup")
require("iron_cnf")
require("lspcnf")
require("plugins")
require("telescope_conf")
require("renamer_cnf")


require("lsp_lines").setup()
-- Disable virtual_text since it's redundant due to lsp_lines.
vim.diagnostic.config({
  virtual_text = false,
})
