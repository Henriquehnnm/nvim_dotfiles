return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    -- Desativa o Netrw para evitar que a tela padrão de diretório seja exibida
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    local telescope = require("telescope.builtin")
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "%.git/", "%.cache/" },
      },
    })

    -- Mapeamentos de teclas para o Telescope
    local map = vim.keymap.set
    map("n", "<leader>e", telescope.find_files, { desc = "Find Files" })
    map("n", "<leader>fg", telescope.live_grep, { desc = "Live Grep" })
    map("n", "<leader>fb", telescope.buffers, { desc = "Buffers" })
    map("n", "<leader>fr", telescope.oldfiles, { desc = "Recent Files" })

    -- Autocomando para abrir o Telescope ao entrar em um diretório
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        -- Verifica se o Neovim foi iniciado com um caminho de diretório
        local argv = vim.fn.argv()
        if #argv == 1 and vim.fn.isdirectory(argv[1]) ~= 0 then
          require("telescope.builtin").find_files()
        end
      end,
    })
  end,
}
