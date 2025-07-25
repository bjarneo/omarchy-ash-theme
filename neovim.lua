return {
	"bjarneo/omarchy-dothash-theme", -- A unique name for the theme plugin
	lazy = false,
	priority = 1000,
	config = function()
		-- Set the colorscheme name
		vim.g.colors_name = "dothash"

		-- Define the color palette
		local palette = {
			bg = "#1c1c1c",
			fg = "#c6c6c6",
			gray1 = "#383838",
			gray2 = "#626262",
			gray3 = "#8a8a8a",
			gray4 = "#9e9e9e",
			gray5 = "#b2b2b2",
			fg_bright = "#e0e0e0",
		}

		-- Define the highlight groups
		local highlights = {
			-- general
			Normal = { fg = palette.fg, bg = palette.bg },
			NormalFloat = { fg = palette.fg, bg = palette.gray1 },
			FloatBorder = { fg = palette.gray3, bg = palette.gray1 },
			CursorLine = { bg = palette.gray1 },
			CursorLineNr = { fg = palette.fg_bright, bg = palette.gray1 },
			SignColumn = { bg = palette.bg },
			Visual = { bg = palette.gray2 },
			Search = { bg = palette.gray3, fg = palette.bg },
			LineNr = { fg = palette.gray3 },
			ColorColumn = { bg = palette.gray1 },
			VertSplit = { fg = palette.gray1 },

			-- syntax
			Comment = { fg = palette.gray3 },
			Constant = { fg = palette.gray4 },
			String = { fg = palette.gray5 },
			Number = { fg = palette.gray5 },
			Boolean = { fg = palette.gray5 },
			Character = { fg = palette.gray5 },
			Identifier = { fg = palette.fg },
			Function = { fg = palette.fg_bright },
			Statement = { fg = palette.gray4 },
			Keyword = { fg = palette.gray4 },
			Operator = { fg = palette.gray4 },
			Type = { fg = palette.gray4 },
			Title = { fg = palette.fg_bright, bold = true },

			-- diff
			DiffAdd = { bg = palette.gray2 },
			DiffChange = { bg = palette.gray2 },
			DiffDelete = { bg = palette.gray2 },
			DiffText = { bg = palette.gray2 },

			-- diagnostics
			DiagnosticError = { fg = palette.fg },
			DiagnosticWarn = { fg = palette.fg },
			DiagnosticInfo = { fg = palette.fg },
			DiagnosticHint = { fg = palette.fg },
			DiagnosticUnderlineError = { undercurl = true, sp = palette.gray4 },
			DiagnosticUnderlineWarn = { undercurl = true, sp = palette.gray4 },
			DiagnosticUnderlineInfo = { undercurl = true, sp = palette.gray4 },
			DiagnosticUnderlineHint = { undercurl = true, sp = palette.gray4 },

			-- Popups and UI
			Pmenu = { fg = palette.fg, bg = palette.gray1 },
			PmenuSel = { fg = palette.fg_bright, bg = palette.gray2 },
			PmenuSbar = { bg = palette.gray1 },
			PmenuThumb = { bg = palette.gray3 },
		}

		-- Apply the highlight groups
		for group, settings in pairs(highlights) do
			vim.api.nvim_set_hl(0, group, settings)
		end
	end,
}
