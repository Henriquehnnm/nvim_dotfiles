return {
  "loctvl842/monokai-pro.nvim",
  name = "monokai-pro",
  lazy = false,
  priority = 1000,
  config = function()
    -- Primeiro, carregue o tema de cores
    vim.cmd("colorscheme monokai-pro")

    -- Habilita o destaque da linha do cursor
    vim.opt.cursorline = true

    -- Remove o destaque do texto da linha, mantendo-o apenas no gutter
    vim.cmd("highlight CursorLine guibg=NONE")
  end,
}
