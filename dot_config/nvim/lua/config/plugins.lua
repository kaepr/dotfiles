local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                compile = false, -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = false },
                functionStyle = {},
                keywordStyle = { italic = false },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = false, -- do not set background color
                dimInactive = false, -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = { -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "dragon", -- Load "wave" theme when 'background' option is not set
                background = { -- map the value of 'background' option to a theme
                    dark = "dragon", -- try "dragon" !
                    light = "lotus"
                },
            })
        end
    },

    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                constrast = "hard",
                italic = {
                    strings = false,
                    comments = false,
                    operators = false,
                    folds = false,
                },
            })

            -- vim.o.background = "light"
            -- vim.cmd("colorscheme gruvbox")
        end
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
        },
        config = function()
            require("ide.lualine")
        end,
    },


    {
        "ThePrimeagen/harpoon",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("ide.harpoon")
        end,
    },


    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("ide.treesitter")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },
    },

    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({
                disable_filetype = { "rkt" }
            })
        end
    },

    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = { { "nvim-lua/plenary.nvim" } },
        config = function()
            require("ide.telescope-setup")
        end,
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("ide.telescope-fzf")
        end,
    },

    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },             -- Required
            { "williamboman/mason.nvim" },           -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },     -- Required
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "L3MON4D3/LuaSnip" },     -- Required
            { "saadparwaiz1/cmp_luasnip" },
        },
        config = function()
            require("ide.lsp")
        end,
    },

    -- Lisp Support
    "benknoble/vim-racket",

    {
        "Olical/conjure",
        config = function()
            vim.g["conjure#filetypes"] = { "clojure", "racket" }
        end
    },

    {
        "eraserhd/parinfer-rust",
        build = "cargo build --release"
    },

    {
        "clojure-vim/vim-jack-in",
        dependencies = {
            {
                "radenling/vim-dispatch-neovim",
                dependencies = {
                    { "tpope/vim-dispatch" }
                }
            }
        }
    },

    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },

    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },

    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        config = function()
            require("ide.null-ls-setup")
        end,
    },

    -- {
    --     "folke/trouble.nvim",
    --     config = function()
    --         require("ide.trouble-setup")
    --     end,
    -- },
}

require("lazy").setup(plugins)
