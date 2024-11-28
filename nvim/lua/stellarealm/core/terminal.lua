local fun = vim.fn
local cmd = vim.api.nvim_command

local term_buf = nil
local term_win = nil

local function openTerminal()
  if fun.bufexists(term_buf) ~= 1 then
    cmd("au TermOpen * setlocal nonumber norelativenumber")
    cmd("sp | winc J | res 15 | term")
    term_win = fun.win_getid()
    term_buf = fun.bufnr("%")
  elseif fun.win_gotoid(term_win) ~= 1 then
    cmd("sb " .. term_buf .. "| winc J | res 15")
    term_win = fun.win_getid()
  end
  cmd("startinsert")
end

local function hideTerminal()
  if fun.win_gotoid(term_win) == 1 then
    cmd("hide")
  end
end

function ToggleTerminal()
  if fun.win_gotoid(term_win) == 1 then
    hideTerminal()
  else
    openTerminal()
  end
end
