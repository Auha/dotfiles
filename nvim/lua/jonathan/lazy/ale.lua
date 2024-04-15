vim.g.ale_open_list = 0
-- vim.g.ale_floating_preview = 1
vim.g.ale_completion_enabled = 1
vim.g.ale_set_loc_list = 0

return {

    "dense-analysis/ale",
    config = function()
        vim.g["airline#extensions#ale#enabled"] = true
    end
}
