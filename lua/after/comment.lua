require('Comment').setup()

local api = require("Comment.api")

-- Normal mode: Toggle line comment
vim.keymap.set("n", "<leader>cc", api.toggle.linewise.current, { noremap = true, silent = true })

-- Visual mode: Toggle line comment on selected lines
vim.keymap.set("v", "<leader>cc", function()
    api.toggle.linewise(vim.fn.visualmode())
end, { noremap = true, silent = true })
