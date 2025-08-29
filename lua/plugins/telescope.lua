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
}
