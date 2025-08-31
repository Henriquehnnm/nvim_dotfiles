return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
    local telescope = require("telescope.builtin")
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "%.git/", "%.cache/" },
      },
    })

    -- Mapeamentos de teclas para o Telescope
    local map = vim.keymap.set
    map("n", "<leader>ff", telescope.find_files, { desc = "Find Files" })
    map("n", "<leader>fg", telescope.live_grep, { desc = "Live Grep" })
    map("n", "<leader>fb", telescope.buffers, { desc = "Buffers" })
    map("n", "<leader>fr", telescope.oldfiles, { desc = "Recent Files" })
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
    -- Configuração para colorir as pastas
    vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#ffd866" })

    -- Configuração padrão do Neo-tree
    vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Neo-tree" })

    -- *** ADICIONE ESTA PARTE PARA AJUSTAR OS ÍCONES ***
    require("neo-tree").setup({
      default_component_configs = {
        icon = {
          folder_closed = "  ", -- Ícone de pasta fechada vazio
          folder_open = "  ",   -- Ícone de pasta aberta vazio
          folder_empty = " ",  -- Ícone de pasta vazia vazio
          folder_empty_open = "  ", -- Ícone de pasta vazia aberta vazio
        },
      },
    })
    end,
  },
}
