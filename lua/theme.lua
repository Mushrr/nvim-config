require('catppuccin').setup({
    flavour = "mocha",
    integrations = {
        nvimtree = true
    },
    color_overrides = {
        mocha = {
            base = '#000000'
        },
    },
    highlight_overrides = {
        mocha = function(mocha)
            return {
                NvimTreeNormal = { bg = mocha.none }
            }
        end
    }
})


function initTheme(color)
    color = color or "catppuccin"
    vim.cmd.colorscheme(color)
    -- vim.api.nvim_set_hl(0, "Terminal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )
    -- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
end

initTheme("rose-pine")
