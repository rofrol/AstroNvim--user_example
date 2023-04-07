return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    'Mofiqul/vscode.nvim',
    priority = 1000,
    config = function()
      --vim.cmd.colorscheme 'vscode'
      vim.o.background = 'light'

      local c = require('vscode.colors').get_colors()
        require('vscode').setup({
        -- Alternatively set style in setup
        -- style = 'light'

        -- Enable transparent background
        transparent = true,

        -- Enable italic comment
        italic_comments = false,

        -- Disable nvim-tree background color
        disable_nvimtree_bg = true,

        -- Override colors (see ./lua/vscode/colors.lua)
        color_overrides = {
            vscLineNumber = '#FFFFFF',
        },

        -- Override highlight groups (see ./lua/vscode/theme.lua)
        group_overrides = {
            -- this supports the same val table as vim.api.nvim_set_hl
            -- use colors from this colorscheme by requiring vscode.colors!
            Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
        }
    })
    require('vscode').load()
    end,
  },
  "ziglang/zig.vim",
}
