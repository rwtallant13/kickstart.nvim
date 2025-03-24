return {
  {
    'otavioschwanck/arrow.nvim',
    dependencies = {
      { 'nvim-tree/nvim-web-devicons' },
      -- or if using `mini.icons`
      -- { "echasnovski/mini.icons" },
    },
    opts = {
      show_icons = true,
      leader_key = '|', -- Recommended to be a single key
      buffer_leader_key = 'm', -- Per Buffer Mappings
    },
  },
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    -- stylua: ignore
    opts = {
      continue = true,

    },
    keys = {
      {
        '<leader>f',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump {
            continue = true, -- this is the line I added
          }
        end,
        desc = 'Flash',
      },
      {
        '<leader>r',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump {
            pattern = vim.fn.expand '<cword>',
          }
        end,
        desc = 'Flash Current word',
      },
      {
        'r',
        mode = 'o',
        function()
          require('flash').remote()
        end,
        desc = 'Remote Flash',
      },
      {
        'R',
        mode = { 'o', 'x' },
        function()
          require('flash').treesitter_search()
        end,
        desc = 'Treesitter Search',
      },
      {
        '<C-s>',
        mode = { 'n' },
        function()
          require('flash').toggle()
        end,
        desc = 'Toggle Flash Search',
      },
    },
  },
}
