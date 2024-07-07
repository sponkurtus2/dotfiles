-- return {
-- Temas
--   { "ellisonleao/gruvbox.nvim" }, -- Gruvbox
--   { "Yazeed1s/oh-lucy.nvim" }, -- Oh-lucy theme
--   { "nyoom-engineering/oxocarbon.nvim" }, -- Oxocarbon
--   { "crispybaccoon/evergarden" }, -- Evergarden
--   { "rebelot/kanagawa.nvim" }, -- Kanagawa
--   { "folke/tokyonight.nvim" }, -- Tokyonight
--   { "daschw/leaf.nvim" }, -- Gruvbox material
--   { "cocopon/iceberg.vim" }, -- Iceberg
--   { "fcancelinha/northern.nvim" }, -- Northern
--   { "shaunsingh/nord.nvim" }, -- Nord
--   -- { "catppuccin/nvim" }, -- Catppuccin
--   { "datsfilipe/min-theme.nvim" }, -- MinTheme
--
--   -- Configurar LazyVim para cargar temas
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "min-theme",
--     },
--   },

-- {
--   "catppuccin/nvim",
--   config = function()
--     require("catppuccin").setup({
--       flavour = "mocha", -- latte, frappe, macchiato, mocha
--       -- flavour = "auto" -- respetará el fondo del terminal
--       background = { -- :h background
--         light = "latte",
--         dark = "mocha",
--       },
--       transparent_background = false, -- desactiva el establecimiento del color de fondo
--       show_end_of_buffer = false, -- muestra los caracteres '~' después del final de los buffers
--       term_colors = false, -- establece los colores del terminal (por ejemplo, `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- oscurece el color de fondo de la ventana inactiva
--         shade = "dark",
--         percentage = 0.15, -- porcentaje de sombra a aplicar a la ventana inactiva
--       },
--       no_italic = true, -- fuerza no cursiva
--       no_bold = false, -- fuerza no negrita
--       no_underline = false, -- fuerza no subrayado
--       styles = { -- maneja los estilos de los grupos hi generales (ver `:h highlight-args`):
--         comments = { "italic" }, -- cambia el estilo de los comentarios
--         conditionals = {},
--         loops = { "italic" },
--         functions = { "italic" },
--         keywords = { "italic" },
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Descomenta para desactivar estilos codificados
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       default_integrations = true,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         treesitter = true,
--         notify = false,
--         mini = {
--           enabled = true,
--           indentscope_color = "",
--         },
--         -- Para más integraciones de plugins, por favor consulta (https://github.com/catppuccin/nvim#integrations)
--       },
--     })
--     vim.cmd("colorscheme catppuccin")
--   end,
-- },

-- setup must be called before loading
---- Configuración específica de Leaf para el contraste medio
--[[ {
        "leaf.nvim",
        config = function()
            require("leaf").setup({
                underlineStyle = "undercurl",
                commentStyle = "italic",
                functionStyle = "NONE",
                keywordStyle = "italic",
                statementStyle = "bold",
                typeStyle = "NONE",
                variablebuiltinStyle = "italic",
                transparent = false,
                colors = {},
                overrides = {},
                theme = "auto",     -- predeterminado, basado en vim.o.background, alternativas: "light", "dark"
                contrast = "medium", -- predeterminado, alternativas: "low", "medium", "high"
            })
            vim.cmd("colorscheme leaf")
        end,
    },
    --]]
-- }

-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       background = {
--         light = "latte",
--         dark = "mocha",
--       },
--       color_overrides = {
--         latte = {
--           rosewater = "#c14a4a",
--           flamingo = "#c14a4a",
--           red = "#c14a4a",
--           maroon = "#c14a4a",
--           pink = "#945e80",
--           mauve = "#945e80",
--           peach = "#c35e0a",
--           yellow = "#b47109",
--           green = "#6c782e",
--           teal = "#4c7a5d",
--           sky = "#4c7a5d",
--           sapphire = "#4c7a5d",
--           blue = "#45707a",
--           lavender = "#45707a",
--           text = "#654735",
--           subtext1 = "#73503c",
--           subtext0 = "#805942",
--           overlay2 = "#8c6249",
--           overlay1 = "#8c856d",
--           overlay0 = "#a69d81",
--           surface2 = "#bfb695",
--           surface1 = "#d1c7a3",
--           surface0 = "#e3dec3",
--           base = "#f9f5d7",
--           mantle = "#f0ebce",
--           crust = "#e8e3c8",
--         },
--         mocha = {
--           rosewater = "#ea6962",
--           flamingo = "#ea6962",
--           red = "#ea6962",
--           maroon = "#ea6962",
--           pink = "#d3869b",
--           mauve = "#d3869b",
--           peach = "#e78a4e",
--           yellow = "#d8a657",
--           green = "#a9b665",
--           teal = "#89b482",
--           sky = "#89b482",
--           sapphire = "#89b482",
--           blue = "#7daea3",
--           lavender = "#7daea3",
--           text = "#ebdbb2",
--           subtext1 = "#d5c4a1",
--           subtext0 = "#bdae93",
--           overlay2 = "#a89984",
--           overlay1 = "#928374",
--           overlay0 = "#595959",
--           surface2 = "#4d4d4d",
--           surface1 = "#404040",
--           surface0 = "#292929",
--           base = "#1d2021",
--           mantle = "#191b1c",
--           crust = "#141617",
--         },
--       },
--       transparent_background = false,
--       show_end_of_buffer = false,
--       integration_default = false,
--       integrations = {
--         cmp = true,
--         hop = true,
--         treesitter = true,
--         which_key = true,
--       },
--       highlight_overrides = {
--         all = function(colors)
--           return {
--             CmpItemMenu = { fg = colors.surface2 },
--             CursorLineNr = { fg = colors.text },
--             FloatBorder = { bg = colors.base, fg = colors.surface0 },
--             GitSignsChange = { fg = colors.peach },
--             LineNr = { fg = colors.overlay0 },
--             LspInfoBorder = { link = "FloatBorder" },
--             NeoTreeDirectoryIcon = { fg = colors.subtext1 },
--             NeoTreeDirectoryName = { fg = colors.subtext1 },
--             NeoTreeFloatBorder = { link = "TelescopeResultsBorder" },
--             NeoTreeGitConflict = { fg = colors.red },
--             NeoTreeGitDeleted = { fg = colors.red },
--             NeoTreeGitIgnored = { fg = colors.overlay0 },
--             NeoTreeGitModified = { fg = colors.peach },
--             NeoTreeGitStaged = { fg = colors.green },
--             NeoTreeGitUnstaged = { fg = colors.red },
--             NeoTreeGitUntracked = { fg = colors.green },
--             NeoTreeIndent = { fg = colors.surface1 },
--             NeoTreeNormal = { bg = colors.mantle },
--             NeoTreeNormalNC = { bg = colors.mantle },
--             NeoTreeRootName = { fg = colors.subtext1, style = { "bold" } },
--             NeoTreeTabActive = { fg = colors.text, bg = colors.mantle },
--             NeoTreeTabInactive = { fg = colors.surface2, bg = colors.crust },
--             NeoTreeTabSeparatorActive = { fg = colors.mantle, bg = colors.mantle },
--             NeoTreeTabSeparatorInactive = { fg = colors.crust, bg = colors.crust },
--             NeoTreeWinSeparator = { fg = colors.base, bg = colors.base },
--             NormalFloat = { bg = colors.base },
--             Pmenu = { bg = colors.mantle, fg = "" },
--             PmenuSel = { bg = colors.surface0, fg = "" },
--             TelescopePreviewBorder = { bg = colors.crust, fg = colors.crust },
--             TelescopePreviewNormal = { bg = colors.crust },
--             TelescopePreviewTitle = { fg = colors.crust, bg = colors.crust },
--             TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
--             TelescopePromptCounter = { fg = colors.mauve, style = { "bold" } },
--             TelescopePromptNormal = { bg = colors.surface0 },
--             TelescopePromptPrefix = { bg = colors.surface0 },
--             TelescopePromptTitle = { fg = colors.surface0, bg = colors.surface0 },
--             TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
--             TelescopeResultsNormal = { bg = colors.mantle },
--             TelescopeResultsTitle = { fg = colors.mantle, bg = colors.mantle },
--             TelescopeSelection = { bg = colors.surface0 },
--             VertSplit = { bg = colors.base, fg = colors.surface0 },
--             WhichKeyFloat = { bg = colors.mantle },
--             YankHighlight = { bg = colors.surface2 },
--             FidgetTitle = { fg = colors.peach },
--
--             IblIndent = { fg = colors.surface0 },
--             IblScope = { fg = colors.overlay0 },
--
--             Boolean = { fg = colors.mauve },
--             Number = { fg = colors.mauve },
--             Float = { fg = colors.mauve },
--
--             PreProc = { fg = colors.mauve },
--             PreCondit = { fg = colors.mauve },
--             Include = { fg = colors.mauve },
--             Define = { fg = colors.mauve },
--             Conditional = { fg = colors.red },
--             Repeat = { fg = colors.red },
--             Keyword = { fg = colors.red },
--             Typedef = { fg = colors.red },
--             Exception = { fg = colors.red },
--             Statement = { fg = colors.red },
--
--             Error = { fg = colors.red },
--             StorageClass = { fg = colors.peach },
--             Tag = { fg = colors.peach },
--             Label = { fg = colors.peach },
--             Structure = { fg = colors.peach },
--             Operator = { fg = colors.peach },
--             Title = { fg = colors.peach },
--             Special = { fg = colors.yellow },
--             SpecialChar = { fg = colors.yellow },
--             Type = { fg = colors.yellow, style = { "bold" } },
--             Function = { fg = colors.green, style = { "bold" } },
--             Macro = { fg = colors.teal },
--           }
--         end,
--         latte = function(colors)
--           return {
--             IblIndent = { fg = colors.mantle },
--             IblScope = { fg = colors.surface1 },
--
--             LineNr = { fg = colors.surface1 },
--           }
--         end,
--       },
--     })
--
--     vim.api.nvim_command("colorscheme catppuccin")
--   end,
-- }
-- return {
--   "AlexvZyl/nordic.nvim",
--   name = "nordic",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("nordic").setup({
--       -- Enable bold keywords.
--       bold_keywords = false,
--       -- Enable italic comments.
--       italic_comments = true,
--       -- Enable general editor background transparency.
--       transparent_bg = false,
--       -- Enable brighter float border.
--       bright_border = false,
--       -- Reduce the overall amount of blue in the theme (diverges from base Nord).
--       reduced_blue = true,
--       -- Swap the dark background with the normal one.
--       swap_backgrounds = true,
--       -- Override the styling of any highlight group.
--       override = {},
--       -- Cursorline options.  Also includes visual/selection.
--       cursorline = {
--         -- Bold font in cursorline.
--         bold = false,
--         -- Bold cursorline number.
--         bold_number = true,
--         -- Available styles: 'dark', 'light'.
--         theme = "light",
--         -- Blending the cursorline bg with the buffer bg.
--         blend = 0.85,
--       },
--       noice = {
--         -- Available styles: `classic`, `flat`.
--         style = "flat",
--       },
--       telescope = {
--         -- Available styles: `classic`, `flat`.
--         style = "flat",
--       },
--       leap = {
--         -- Dims the backdrop when using leap.
--         dim_backdrop = false,
--       },
--     })
--     vim.api.nvim_command("colorscheme nordic")
--   end,
-- }
return {
  -- {
  --   "ribru17/bamboo.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require("bamboo").setup({
  --       -- optional configuration here
  --     })
  --     require("bamboo").load()
  --   end,
  -- },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
    config = function()
      -- vim.cmd.
      vim.cmd([[colorscheme solarized-osaka]])
    end,
  },
}
