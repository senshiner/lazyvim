return {
  {
    "mhartington/formatter.nvim",
    config = function()
      require("formatter").setup({
        filetype = {
          javascript = {
            require("formatter.filetypes.javascript").prettier
          },
          typescript = {
            require("formatter.filetypes.typescript").prettier
          },
          json = {
            require("formatter.filetypes.json").prettier
          },
          html = {
            require("formatter.filetypes.html").prettier
          },
          css = {
            require("formatter.filetypes.css").prettier
          },
          markdown = {
            require("formatter.filetypes.markdown").prettier
          },
          yaml = {
            require("formatter.filetypes.yaml").prettier
          },
        },
      })
    end,
  },
}
