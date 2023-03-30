local wk = require 'which-key'
local mappings = require 'config.mappings'

wk.register(mappings, { prefix = '<space>' })
wk.setup({})
