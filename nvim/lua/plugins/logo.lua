return {
  {
    "folke/noice.nvim",
    enabled = false,
    -- opts = function(_, opts)
    --   table.insert(opts.routes, {
    --     filter = {
    --       event = "notify",
    --       find = "No information available",
    --     },
    --     opts = { skip = true },
    --   })
    --
    --   opts.presets.lsp_doc_border = true
    -- end,
  },
  {
    "rcarriga/nvim-notify",
    config = function(_, opts)
      require("notify").setup(vim.tbl_extend("keep", {
        background_colour = "#000000",
      }, opts))
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
     _______________                        |*\_/*|________
    |  ___________  |     .-.     .-.      ||_/-\_|______  |
    | |           | |    .****. .****.     | |           | |
    | |   0   0   | |    .*****.*****.     | |   0   0   | |
    | |     -     | |     .*********.      | |     -     | |
    | |   \___/   | |      .*******.       | |   \___/   | |
    | |___     ___| |       .*****.        | |___________| |
    |_____|\_/|_____|        .***.         |_______________|
      _|__|/ \|_|_.............*.............._|________|_
     / ********** \                          / ********** \
   /  ************  \                      /  ************  \
  --------------------                    --------------------
        ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
