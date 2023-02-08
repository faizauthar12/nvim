local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require('cmp')

cmp.setup({
    sources = {
        name = 'path'
    }
})

lsp.setup_nvim_cmp({
    mapping = lsp.defaults.cmp_mappings({
        ['<C-Space>'] = cmp.mapping.complete(),
    })
})

lsp.setup()
