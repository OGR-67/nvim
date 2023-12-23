local format_on_save = require("format-on-save")
local formatters = require("format-on-save.formatters")

format_on_save.setup({
  exclude_path_patterns = {
    "/node_modules/",
    ".local/share/nvim/lazy",
  },
  formatter_by_ft = {
    scss = formatters.prettierd,
    css = formatters.prettierd,
    html = formatters.prettierd,

    javascript = formatters.prettierd,
    javascriptreact = formatters.prettierd,
    typescript = formatters.prettierd,
    typescriptreact = formatters.prettierd,

    yaml = formatters.prettierd,
    json = formatters.prettierd,

    java = formatters.lsp,
    lua = formatters.lsp,
    markdown = formatters.prettierd,
    openscad = formatters.lsp,
    python = formatters.black,
    rust = formatters.lsp,
    scad = formatters.lsp,
    sh = formatters.shfmt,
    terraform = formatters.lsp,
  },
})
