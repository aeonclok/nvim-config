return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      show_buffer_close_icons = false,
      always_show_bufferline = true,
      show_close_icon = false,
      indicator = {
        icon = ">>",
      },
      diagnostics = false, -- This disables LSP error indicators
      separator_style = { "", "" }, -- Custom empty separators
    },
    highlights = {
      buffer_selected = {
        bold = true,
      },
      buffer_visible = {
        bold = true,
      },
      indicator_selected = {
        bold = true,
      },
    },
  },
}
