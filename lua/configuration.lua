-- basic configuration
local configuration = {
    tabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    nu = true,
    cursorline = true,
}

for k, v in pairs(configuration) do
    vim.opt[k] = v
end


vim.cmd.colorscheme("catppuccin")
