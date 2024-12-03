require("stellarealm.core.statusline")

local set = vim.opt

-- take indent for new line from previous line
set.autoindent = true

-- synchronized unammed register with the system clipboard
set.clipboard = "unnamedplus"

-- ask what to do about unsaved/read-only files
set.confirm = true

-- highlight cursor line underneath the cursor horizontally
set.cursorline = true

-- use space instead of tabs
set.expandtab = true

-- character to fill the statusline, empty lines below the end of a buffer
set.fillchars = { eob = " ", stl = "─", stlnc = "─" }

-- highlight matches with last search pattern
set.hlsearch = true

-- ignore case in search patterns
set.ignorecase = true

-- highlight match while typing search pattern
set.incsearch = true

-- show the effects of a command in a preview window
set.inccommand = "split"

-- only one status line at the bottom showing the current window’s status
set.laststatus = 3

-- useful to see the difference between tabs and spaces and for trailing blanks
set.list = false

-- absolute line number
set.number = true

-- relative line number
set.relativenumber = true

-- do not let cursor scroll below or above x number of lines when scrolling
set.scrolloff = 999

-- number of spaces to use for (auto)indent step
set.shiftwidth = 4

-- message on status line to show current mode
set.showmode = false

-- override ignorecase option if specifically searching for capital letters
set.smartcase = true

-- when splitting a window, put the new window below the current one.
set.splitbelow = true

-- when splitting a window, put the new window right of the current one.
set.splitright = true

-- custom statusline
set.statusline = "%!v:lua.Statusline()"

-- disable swapfile for the buffer
set.swapfile = false

-- number of spaces that <Tab> in file uses
set.tabstop = 4

-- terminal gui colors
set.termguicolors = true

-- the time in milliseconds that is waited for a key code or mapped key sequence to complete
set.timeoutlen = 500

-- wrap line
set.wrap = false

-- NetRW Customization

-- hide the banner (use I to toggle the banner)
vim.g.netrw_banner = 0

-- keep current directory and browsing directory synced
vim.g.netrw_keepdir = 0

-- size of the netrw window
vim.g.netrw_winsize = 20

-- tree style
vim.g.netrw_liststyle = 3

-- enable recursive copy of directories
vim.g.netrw_localcopydircmd = "cp -r"

-- hide dotfiles on load
vim.g.netrw_list_hide = "\\(^\\|\\s\\s\\)\\zs\\.\\S\\+"
