return {
  "lambdalisue/suda.vim",
  keys = {
    {
      "<Leader>W",
      mode = { "n" },
      "<Cmd>SudaWrite<CR>",
      desc = "Treesitter Search",
    },
  },
  cmd = { "SudaRead", "SudaWrite" },
}
