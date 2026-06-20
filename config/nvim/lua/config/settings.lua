local o = vim.opt

vim.cmd.colorscheme("catppuccin")

-- USER INTERFACE
o.number = true
o.cursorline = true
o.syntax = "on"
o.termguicolors = true
vim.o.mousemoveevent = true

-- INDENTATION AND SPACING
o.autoindent = true
o.smartindent = true
o.shiftwidth = 2
o.tabstop = 2

-- TEXT WRAPPING AND MARGINS
o.wrap = false
o.textwidth = 0
o.linebreak = true
o.breakindent = true

-- PERFORMANCE AND SYSTEM
o.clipboard = "unnamedplus"
o.swapfile = false
o.backup = false
o.writebackup = false
o.updatetime = 250
o.timeoutlen = 300
o.encoding = "UTF-8"

-- SEARCH BEHAVIOR
o.ignorecase = true
o.smartcase = true

-- WHITESPACE RENDERING
o.list = true
o.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- DIAGNOSTICS CONFIGURATION
vim.diagnostic.config({
	virtual_text = {
		prefix = "󰙎",
		spacing = 4,
	},
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
