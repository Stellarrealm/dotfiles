local function customModule()
  local count = {}
  local levels = {
    errors = "Error",
    warnings = "Warn",
    info = "Info",
    hints = "Hint",
  }

  for i, level in pairs(levels) do
    count[i] = vim.tbl_count(vim.diagnostic.get(0, { severity = level }))
  end

  local errors = ""
  local warnings = ""
  local info = ""
  local hints = ""

  if count["errors"] ~= -1 then
    errors = "%#Normal# " .. count["errors"]
  end
  if count["warnings"] ~= -1 then
    warnings = " %#Normal# " .. count["warnings"]
  end
  if count["info"] ~= -1 then
    info = " %#Normal# " .. count["info"]
  end
  if count["hints"] ~= -1 then
    hints = " %#Normal# " .. count["hints"]
  end

  local git_info = vim.b.gitsigns_status_dict

  if not git_info or git_info.head == "" then
    return errors .. warnings .. info .. hints .. "%#Normal#"
  end

  return "[ " .. git_info.head .. "] " .. errors .. warnings .. "%#Normal#"
end


-- local function mode()
--   local modes = {
--     ["n"] = "NORMAL",
--     ["no"] = "NORMAL",
--     ["v"] = "VISUAL",
--     ["V"] = "VISUAL LINE",
--     [""] = "VISUAL BLOCK",
--     ["s"] = "SELECT",
--     ["S"] = "SELECT LINE",
--     [""] = "SELECT BLOCK",
--     ["i"] = "INSERT",
--     ["ic"] = "INSERT",
--     ["R"] = "REPLACE",
--     ["Rv"] = "VISUAL REPLACE",
--     ["c"] = "COMMAND",
--     ["cv"] = "VIM EX",
--     ["ce"] = "EX",
--     ["r"] = "PROMPT",
--     ["rm"] = "MOAR",
--     ["r?"] = "CONFIRM",
--     ["!"] = "SHELL",
--     ["t"] = "TERMINAL",
--   }
--   local current_mode = vim.api.nvim_get_mode().mode
--   return string.format("%s", modes[current_mode]):upper()
-- end

function Statusline()
  local filename = "%t"
  -- local modified = "%m"
  local alignment = "%="
  local linecol = "Ln %l, Col %c"
  local custom = customModule()
  -- local showmode = mode()
  -- local color = "%#Normal#"

  return string.format(
    "%s%s%s%s%s",
    -- color,
    -- showmode,
    custom,
    alignment,
    filename,
    -- modified,
    alignment,
    linecol
  )
end
