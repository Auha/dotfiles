return {
    "scrooloose/nerdcommenter",
    config = function()
        vim.keymap.set("n", "<C-\\>", "<Plug>NERDCommenterToggle", {silent=true})
        vim.g.NERDSpaceDelims = 1
        vim.g.NERDCustomDelimiters = {
            python = {left = "#:"}
        }
    end
}
