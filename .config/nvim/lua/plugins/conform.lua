return {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("conform").setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "ruff_format" },
                -- Conform will run multiple formatters sequentially
                go = { "goimports", "gofmt" },
                -- Use a sub-list to run only the first available formatter
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                astro = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
            },
            -- These options will be passed to conform.format()
            format_on_save = { timeout_ms = 500, async = false, lsp_fallback = true },
            condition = function(_, ctx)
                return vim.fs.basename(ctx.filename) ~= "README.md"
            end,
        })

        require("conform").formatters.rustfmt = {
            options = {
                -- The default edition of Rust to use when no Cargo.toml file is found
                default_edition = "2021",
            },
        }
    end,
}
