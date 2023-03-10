vim.g.mapleader = " "

-- key map

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- go back
-- tree keymap

function quick_exec()
    local filetype = vim.bo.filetype
    local current_file_name = vim.api.nvim_buf_get_name(0)
    local command = nil
    local support = false
    if filetype == 'python'
    then
        command = string.format('python3 %s', current_file_name)
        support = true
    elseif filetype == 'rust'
    then
        command = string.format('cargo run')
        support = true
    end
    if support
    then
        local result = vim.fn.system(command)
        vim.api.nvim_echo({{result}}, true, {})
    else
        print(string.format('Not support for %s', filetype))
    end
end


vim.keymap.set('n', '<leader>en', quick_exec)
