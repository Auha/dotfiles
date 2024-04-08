vim.g['fern#renderer'] = 'nerdfont'
vim.g['fern#default_hidden'] = 1
vim.g['fern_git_status#disable_ignored'] = 1
vim.g['fern_git_status#disable_untracked'] = 1
vim.g['fern_git_status#disable_submodules'] = 1

local augroup = vim.api.nvim_create_augroup
local glyph_palette_group = augroup('glyph-palette', {})

local autocmd = vim.api.nvim_create_autocmd

autocmd('Filetype', {
    group = glyph_palette_group,
    pattern = 'fern',
    callback = function()
        vim.fn.sign_define("glyph_palette#apply")
    end
})

vim.filetype.add({

})

return {
    "lambdalisue/fern.vim",
    dependencies = {
        "lambdalisue/nerdfont.vim",
        "lambdalisue/fern-renderer-nerdfont.vim",
        "lambdalisue/fern-git-status.vim",
        "lambdalisue/glyph-palette.vim",
    },
    config = function()
        vim.keymap.set("n", "<leader>n", ":Fern . -toggle -drawer -width=50 -keep -reveal=%<CR>")
        vim.keymap.set("n", "o", "<Plug>(fern-action-open:edit)", {noremap=true, silent=true, buffer=true})
        vim.keymap.set("n", "s", "<Plug>(fern-action-open:vsplit)", {buffer = true})
    end
}
