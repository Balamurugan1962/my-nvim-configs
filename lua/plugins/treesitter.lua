return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",

  event = { "BufReadPost", "BufNewFile" }, -- loads treesitter only when a file opens

  config = function()
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
      return
    end

    configs.setup({
      ensure_installed = {
        "c", "cpp", "rust", "lua", "python"
      },

      highlight = {
        enable = true,
      },

      indent = {
        enable = true,
      },
    })
  end
}
