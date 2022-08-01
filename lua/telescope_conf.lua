require('telescope').setup{
  defaults = {
    prompt_prefix = "$$$ ",
  },
  extensions = {
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },

    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  },
}
require('telescope').load_extension('fzf')
require("telescope").load_extension "file_browser"

local mappings = {

}
mappings.current_buf = function()
local opt = require('telescope.themes').get_ivy()
require('telescope.builtin').current_buffer_fuzzy_find(opt)
end
return mappings


