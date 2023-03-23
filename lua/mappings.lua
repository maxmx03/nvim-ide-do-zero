local map = vim.keymap.set

local mappings = {
  e = { '<cmd>NvimTreeToggle<cr>', 'File Explorer' },
  f = { '<cmd>Telescope find_files<cr>', 'Fuzzy Finder' },
  q = { '<cmd>quit<cr>', 'Quit' },
  Q = { '<cmd>quitall<cr>', 'Exit' },
  w = { '<cmd>update<cr>', 'Save' },
  s = {
    name = 'Search',
    f = { '<cmd>Telescope find_files<cr>', 'Files' },
    w = { '<cmd>Telescope live_grep<cr>', 'Words' },
    k = { '<cmd>Telescope keymaps<cr>', 'Keymaps' },
    h = { '<cmd>Telescope help_tags<cr>', 'Help Tags' },
    c = { '<cmd>Telescope commands<cr>', 'Commands' },
  }
}

map('n', 'ss', '<cmd>split<cr>')
map('n', 'sv', '<cmd>vsplit<cr>')

return mappings
