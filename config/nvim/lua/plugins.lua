require("lazy").setup({
  -- Autocomplete
  "dcampos/cmp-snippy",   -- Autocomplete plugin for snippy snippets
  "dcampos/nvim-snippy",  -- Language based snippets
  "hrsh7th/cmp-buffer",   -- Autocomplete support for words in buffers
  "hrsh7th/cmp-cmdline",  -- Autocomplete support for neovim command line
  "hrsh7th/cmp-nvim-lsp", -- Autocomplete support for language server
  "hrsh7th/cmp-path",     -- Autocomplete support for filesystem paths
  "hrsh7th/nvim-cmp",     -- Autocompletion engine

  -- Dependencies
  "kyazdani42/nvim-web-devicons", -- Displays dev icons in many other plugins
  "nvim-lua/plenary.nvim",        -- A Lua module for asynchronous programming using coroutines.

  -- LSP Management with mason
  "jay-babu/mason-null-ls.nvim", -- Brige null_ls in Mason
  "mfussenegger/nvim-dap",
  "neovim/nvim-lspconfig",
  "nvimtools/none-ls.nvim", -- Called as null_ls
  "rcarriga/nvim-dap-ui",
  "williamboman/mason-lspconfig.nvim",
  "williamboman/mason.nvim",

  -- Utilities: As-is
  "arkav/lualine-lsp-progress",            -- Lualine plugin for LSP index progress
  "christoomey/vim-tmux-navigator",        -- Seamless Tmux
  "jghauser/mkdir.nvim",                   -- Make directories when saving file
  "mogelbrod/vim-jsonpath",                -- Easily view the full dot path of a JSON node
  "nvim-telescope/telescope-symbols.nvim", -- Lualine plugin for LSP index progress
  "onsails/lspkind-nvim",                  -- Pictograms for built-in LSP
  "terrortylor/nvim-comment",              -- Language based commenting
  "tpope/vim-fugitive",                    -- Git commands - most notably :Gblame
  "tpope/vim-projectionist",               -- :A to jump between spec and code
  "tpope/vim-surround",                    -- Extensive "surround" support for parentheses, quotes, tags, etc.
  "vim-test/vim-test",                     -- Run tests from within test file
  {
    "kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  }, -- Git UI

  -- Utilities: Customized Install
  { "kyazdani42/nvim-tree.lua",                 dependencies = { "kyazdani42/nvim-web-devicons" } },                  -- File Explorer
  { "lewis6991/gitsigns.nvim",                  dependencies = { "nvim-lua/plenary.nvim" } },                         -- Display Git indicators in gutter
  { "nvim-lualine/lualine.nvim",                dependencies = { "kyazdani42/nvim-web-devicons", optional = true } }, -- Bottom status line
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },                                                     -- Fuzzy find
  { "nvim-telescope/telescope.nvim",            dependencies = { "nvim-lua/plenary.nvim" } },                         -- Fuzzy find
  { "nvim-treesitter/nvim-treesitter",          build = ":TSUpdate" },                                                -- Tree Sitter syntax highlighting

  -- Themes
  "EdenEast/nightfox.nvim",
  { "catppuccin/nvim", name = "catppuccin" },
})
