local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require('cmp')

lsp.setup_nvim_cmp({
    mapping = lsp.defaults.cmp_mappings({
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp', keyword_length = 1},
        {name = 'buffer', keyword_length = 3},
        {name = 'luaship', keyword_length = 2},
    }
})

lsp.setup()
