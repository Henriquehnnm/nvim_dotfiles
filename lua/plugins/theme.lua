-- ~/.config/nvim/lua/plugins/spec.lua

return {
  -- outros plugins...

  -- Adicione o tema Monokai-Pro
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false, -- Carregamento imediato
    priority = 1000, -- Alta prioridade
    dependencies = { "rktjmp/lush.nvim" }, -- Requerido para o tema
    config = function()
      require("monokai-pro").setup({
        -- Opcional: configure as variantes do tema
        -- style = "octagon", -- Outras opções: "machine", "ristretto", "spectrum", "classic", "monokai",
        -- transparent_background = false,
        -- ...
      })
      
      -- Carrega o esquema de cores
      vim.cmd("colorscheme monokai-pro")
    end,
  },
}
