local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local autosave_group = augroup("BrettAutosave", { clear = true })
local checktime_group = augroup("BrettChecktime", { clear = true })

autocmd({ "InsertLeave", "TextChanged", "FocusLost" }, {
  group = autosave_group,
  callback = function(args)
    local bufnr = args.buf
    if vim.bo[bufnr].buftype ~= "" then
      return
    end
    if not vim.bo[bufnr].modifiable then
      return
    end
    if vim.fn.expand("%") == "" then
      return
    end
    if vim.bo[bufnr].modified then
      vim.cmd("silent! update")
    end
  end,
})

autocmd({ "FocusGained", "BufEnter", "CursorHold" }, {
  group = checktime_group,
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})
