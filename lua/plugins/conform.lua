-- In your LazyVim config (e.g., lua/plugins/conform.lua or similar)
return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      biome = {
        -- Only run if biome.json or biome.jsonc is present in the project root
        require_cwd = true,
      },
    },
    formatters_by_ft = {
      javascript = { "biome" },
      typescript = { "biome" },
      -- Add other filetypes as needed
    },
  },
}
