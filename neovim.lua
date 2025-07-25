return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    flavour = "macchiato",
    -- This will override the default catppuccin colors with a dothash theme.
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      notify = true,
      mini = {
        enabled = true,
        indentscope_color = "",
      },
    },
    custom_highlights = function(colors)
      local dothash = {
        bg = "#1c1c1c",
        fg = "#c6c6c6",
        gray1 = "#383838",
        gray2 = "#626262",
        gray3 = "#8a8a8a",
        gray4 = "#9e9e9e",
        gray5 = "#b2b2b2",
        fg_bright = "#e0e0e0",
      }
      return {
        -- general
        Normal = { fg = dothash.fg, bg = dothash.bg },
        NormalFloat = { fg = dothash.fg, bg = dothash.gray1 },
        FloatBorder = { fg = dothash.gray3, bg = dothash.gray1 },
        CursorLine = { bg = dothash.gray1 },
        CursorLineNr = { fg = dothash.fg_bright, bg = dothash.gray1 },
        SignColumn = { bg = dothash.bg },
        Visual = { bg = dothash.gray2 },
        Search = { bg = dothash.gray3, fg = dothash.bg },
        LineNr = { fg = dothash.gray3 },
        ColorColumn = { bg = dothash.gray1 },
        VertSplit = { fg = dothash.gray1 },

        -- syntax
        Comment = { fg = dothash.gray3 },
        Constant = { fg = dothash.gray4 },
        String = { fg = dothash.gray5 },
        Number = { fg = dothash.gray5 },
        Boolean = { fg = dothash.gray5 },
        Character = { fg = dothash.gray5 },
        Identifier = { fg = dothash.fg },
        Function = { fg = dothash.fg_bright },
        Statement = { fg = dothash.gray4 },
        Keyword = { fg = dothash.gray4 },
        Operator = { fg = dothash.gray4 },
        Type = { fg = dothash.gray4 },
        Title = { fg = dothash.fg_bright, style = "bold" },

        -- diff
        DiffAdd = { bg = dothash.gray2 },
        DiffChange = { bg = dothash.gray2 },
        DiffDelete = { bg = dothash.gray2 },
        DiffText = { bg = dothash.gray2 },

        -- diagnostics
        DiagnosticError = { fg = dothash.fg },
        DiagnosticWarn = { fg = dothash.fg },
        DiagnosticInfo = { fg = dothash.fg },
        DiagnosticHint = { fg = dothash.fg },
        DiagnosticUnderlineError = { undercurl = true, sp = dothash.gray4 },
        DiagnosticUnderlineWarn = { undercurl = true, sp = dothash.gray4 },
        DiagnosticUnderlineInfo = { undercurl = true, sp = dothash.gray4 },
        DiagnosticUnderlineHint = { undercurl = true, sp = dothash.gray4 },

        -- Popups and UI
        Pmenu = { fg = dothash.fg, bg = dothash.gray1 },
        PmenuSel = { fg = dothash.fg_bright, bg = dothash.gray2 },
        PmenuSbar = { bg = dothash.gray1 },
        PmenuThumb = { bg = dothash.gray3 },
      }
    end,
  },
}
