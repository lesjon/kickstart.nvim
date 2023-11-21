local function run_curr_python_file()
    vim.cmd("write")
    -- Get file name in the current buffer
    local file_name = vim.api.nvim_buf_get_name(0)

    -- Get terminal codes for running python file
    local py_cmd = vim.api.nvim_replace_termcodes("ipython \"" .. file_name .. "\"<cr><C-\\><C-N>G", true, false, true)

    vim.cmd(":vert split | term") -- Launch terminal (vertical split)

    -- Press keys to run python command on current file
    vim.api.nvim_feedkeys(py_cmd, "t", false)
end

local function test_curr_python_file()
    vim.cmd("write")
    -- Get file name in the current buffer
    local file_name = vim.api.nvim_buf_get_name(0)

    -- Get terminal codes for running python file
    -- ("i" to enter insert before typing rest of the command)
    local py_cmd = vim.api.nvim_replace_termcodes("ipython -m unittest \"" .. file_name .. "\"<cr><C-\\><C-N>G", true,
        false, true)

    vim.cmd(":vert split | term") -- Launch terminal (vertical split)

    -- Press keys to run python command on current file
    vim.api.nvim_feedkeys(py_cmd, "t", false)
end

vim.keymap.set({ 'n' }, '<F5>', '', {
    desc = "Run .py file via Neovim built-in terminal",
    callback = run_curr_python_file
})

vim.keymap.set({ 'n' }, '<F6>', '', {
    desc = "Run unittests in .py file via Neovim built-in terminal",
    callback = test_curr_python_file
})
