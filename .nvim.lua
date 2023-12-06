vim.api.nvim_exec(
  [[
  autocmd BufWritePost *.lua luafile %
]],
  false
)
