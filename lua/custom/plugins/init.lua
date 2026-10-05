-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'coffebar/neovim-project',
    opts = {
      projects = { -- define project roots
        '~/git/cbrock/*',
        '~/.config/*',
        '~/notes/*',
      },
      picker = {
        type = 'telescope', -- or "fzf-lua"
      },
    },
    init = function()
      -- enable saving the state of plugins in the session
      vim.opt.sessionoptions:append 'globals' -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      -- optional picker
      { 'nvim-telescope/telescope.nvim', tag = '0.1.4' },
      -- optional picker
      { 'Shatur/neovim-session-manager' },
    },
    lazy = false,
    priority = 100,
  },
  { 'tpope/vim-fugitive' },
}
