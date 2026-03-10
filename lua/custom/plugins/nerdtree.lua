-- File: lua/custom/plugins/nerdtree.lua

return {
  {
    'preservim/nerdtree',
    -- Optional: Add dependencies for file icons (requires a Nerd Font)
    dependencies = {
      'ryanoasis/vim-devicons',
    },
    config = function()
      -- Optional: Customize NERDTree settings here
      vim.g.NERDTreeShowHidden = 1 -- Show hidden files by default
      -- vim.g.NERDTreeQuitOnOpen = 1  -- Close NERDTree after opening a file
    end,
    -- Lazy-load on keymap or command to improve startup time
    keys = {
      { '<leader>n', '<cmd>NERDTreeToggle<CR>', desc = 'Toggle NERDTree' },
    },
    cmd = { 'NERDTreeToggle', 'NERDTreeFind' }, -- Also lazy-load on these commands
  },
}
