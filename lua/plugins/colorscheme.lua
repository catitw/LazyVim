return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },

  -- temp fix for LazyVim bug [#6355](https://github.com/LazyVim/LazyVim/issues/6355)
  -- see [fix](https://github.com/LazyVim/LazyVim/issues/6355#issuecomment-3212986215)
  {
    "catppuccin/nvim",
    opts = function(_, opts)
      local module = require("catppuccin.groups.integrations.bufferline")
      if module then
        module.get = module.get_theme
      end
      return opts
    end,
  },
}
