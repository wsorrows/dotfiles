-- This is an example chadrc file , its supposed to be placed in /lua/custom dir
-- lua/custom/chadrc.lua

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
  mapleader = ",",
  numberwidth = 2,
  relativenumber = false,
  expandtab = true,
  shiftwidth = 2,
  smartindent = true,
  tabstop = 2,
}

M.ui = {
   theme = "chadracula",
}

M.mappings = {
  misc = {
    line_number_toggle = "<space>n"
  }
}

M.mappings.plugins = {
  bufferline = {
    next_buffer = "<C-n>",
    prev_buffer = "<C-p>",
  },
  nvimtree = {
    toggle = "<leader>n"
  }
}

M.plugins = {
  options = {
    lspconfig = {
      setup_lspconf = "custom.configs.lsp_configs"
    },
    nvimtree = {
       enable_git = 1,
       -- packerCompile required after changing lazy_load
       lazy_load = true,

       ui = {
          allow_resize = true,
          side = "left",
          width = "20%",
          auto_resize = true,
          hide_root_folder = false,
       },
    },
  },
  default_plugin_config_replace = {
    lspconfig = "custom.configs.lspconfig",
    nvim_tree = "custom.configs.nvimtree",
    gitsigns = "custom.configs.gitsigns",
    lsp_handlers = "custom.configs.lsp_handlers"
  },
}

return M
