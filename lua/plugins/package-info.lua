return {
  {
    "vuki656/package-info.nvim",
    ft = "json",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
      autostart = false,
      package_manager = "npm",
      colors = {
        up_to_date = "#0DB9D7",
        outdated = "#db4b4b",
      },
      hide_up_to_date = true,
    },
    config = function(_, opts)
      require("package-info").setup(opts)
      vim.cmd([[highlight PackageInfoUpToDateVersion guifg=]] .. opts.colors.up_to_date)
      vim.cmd([[highlight PackageInfoOutdatedVersion guifg=]] .. opts.colors.outdated)
    end,
  },
}
