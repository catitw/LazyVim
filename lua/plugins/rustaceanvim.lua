-- https://www.lazyvim.org/configuration/plugins#%EF%B8%8F-customizing-plugin-specs
-- https://www.lazyvim.org/configuration/examples
--
-- https://www.lazyvim.org/extras/lang/rust#rustaceanvim

-- just change default settings for `["rust-analyzer"].procMacro.ignored`.
return {
  "mrcjkb/rustaceanvim",
  opts = function(_, opts)
    return vim.tbl_deep_extend("force", opts, {
      server = {
        default_settings = {
          ["rust-analyzer"] = {
            procMacro = {
              ignored = {
                ["async-trait"] = vim.NIL,
              },
            },
          },
        },
      },
    })
  end,
}
