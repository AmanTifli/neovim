-- comment line
vim.keymap.set("n", "<leader>cc", "<Cmd>call VSCodeNotify('editor.action.commentLine')<CR>", {silent = true})

-- find in currently opened file
vim.keymap.set("n", "<leader>cf", "<Cmd>call VSCodeNotify('actions.find')<CR>", { silent = true })

-- find in all files
vim.keymap.set("n", "<leader>ff", "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>", { silent = true })

-- toggle open close file tree (sidebar)
vim.keymap.set("n", "<leader>ft", "<Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>", { silent = true })

-- toggle open close bottom panel
vim.keymap.set("n", "<leader>tt", "<Cmd>call VSCodeNotify('workbench.action.togglePanel')<CR>", { silent = true })

-- go to definition
vim.keymap.set("n", "gd", "<Cmd>call VSCodeNotify('editor.action.revealDefinition')<CR>", { silent = true })

-- go to right tab
vim.keymap.set("n", "<C-e>", "<Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>", { silent = true })

-- go to left tab
vim.keymap.set("n", "<C-q>", "<Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>", { silent = true })