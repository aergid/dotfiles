-- This is where your custom modules and plugins go.
-- See the wiki for a guide on how to extend NvChad

local cmd = vim.cmd
local hooks = require "core.hooks"

-- NOTE: To use this, make a copy with `cp example_init.lua init.lua`

--------------------------------------------------------------------

-- To modify packaged plugin configs, use the overrides functionality
-- if the override does not exist in the plugin config, make or request a PR,
-- or you can override the whole plugin config with 'chadrc' -> M.plugins.default_plugin_config_replace{}
-- this will run your config instead of the NvChad config for the given plugin

-- hooks.override("lsp", "publish_diagnostics", function(current)
--   current.virtual_text = false;
--   return current;
-- end)

-- To add new mappings, use the "setup_mappings" hook,
-- you can set one or many mappings
-- example below:
vim.api.nvim_command([[
au BufEnter * if &diff
    hi DiffAdd guifg=#b8bb26 guibg=#282828 guisp=NONE gui=reverse cterm=reverse
    hi DiffChange guifg=#8ec07c guibg=#282828 guisp=NONE gui=reverse cterm=reverse
    hi DiffDelete guifg=#fb4934 guibg=#282828 guisp=NONE gui=reverse cterm=reverse
    hi DiffText guifg=#fabd2f guibg=#282828 guisp=NONE gui=reverse cterm=reverse
  endif
]])

cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode

hooks.add("setup_mappings", function(map)
   map("n", "<leader>cc", "gg0vG$d", opt) -- example to delete the buffer
   map("n", ";", ":")
   map("n", ";;", ";", {noremap = true})
   
   -- Better indenting
   -- map("v", "<", "<gv", {noremap = true})
   -- map("v", ">", ">gv", {noremap = true})

   map("n", [[<Leader>w<Leader>w]], [[:e ~/YaD/Notes/diary/`date +\%Y-\%m-\%d`.md<CR>]], {noremap = true})
end)

-- To add new plugins, use the "install_plugin" hook,
-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event' field)
-- see: https://github.com/wbthomason/packer.nvim
-- examples below:

hooks.add("install_plugins", function(use)
   use {"sainnhe/gruvbox-material"}
   use {"MTDL9/vim-log-highlighting", ft = {"log"}}
   use {
     "lambdalisue/suda.vim",
     config = function()
        require("custom.plugin_confs.suda")
      end
    }
   use {"tpope/vim-surround"}
   use {
     "easymotion/vim-easymotion",
     config = function()
        require("custom.plugin_confs.easymotion")
      end,
      keys = {
        {"v", "<Leader>ss"},
        {"v", "<Leader>sa"},
        {"n", "<Leader>ss"},
        {"n", "<Leader>sa"},
      }
    }
    use {
     "junegunn/goyo.vim",
     config = function()
        require("custom.plugin_confs.goyo")
      end,
      keys = {{"n", "<Leader><Leader>"}}
    }
end)

-- alternatively, put this in a sub-folder like "lua/custom/plugins/mkdir"
-- then source it with

-- require "custom.plugins.mkdir>"
