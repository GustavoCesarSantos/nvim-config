return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = true,
      styles = {
        keywords = { "bold" },
        functions = { "italic" },
      },
      custom_highlights = function(colors)
        return {
          -- custom
          PanelHeading = {
            fg = colors.lavender,
            bg = colors.none,
            style = { "bold", "italic" },
          },

          -- lazy.nvim
          LazyH1 = {
            bg = colors.none,
            fg = colors.lavender,
            style = { "bold" },
          },
          LazyButton = {
            bg = colors.none,
            fg = colors.subtext0,
          },
          LazyButtonActive = {
            bg = colors.none,
            fg = colors.lavender,
            style = { "bold" },
          },
          LazySpecial = { fg = colors.green },

          CmpItemMenu = { fg = colors.subtext1 },

          FloatBorder = {
            fg = colors.mantle,
            bg = colors.none,
          },

          FloatTitle = {
            fg = colors.base,
            bg = colors.none,
          },
        }
      end,
    })
    vim.cmd.colorscheme("catppuccin")
    end,
}
