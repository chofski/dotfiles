return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Development
    use {'tpope/vim-dispatch'}
    use {'tpope/vim-fugitive'}
    use {'tpope/vim-surround'}
    use {'tpope/vim-commentary'}
    use {'tpope/vim-rhubarb'}
    use {'tpope/vim-unimpaired'}
    use {'wellle/targets.vim'}
    use {'easymotion/vim-easymotion'}
    use {'liuchengxu/vim-which-key'}
    use {'norcalli/nvim-colorizer.lua'}
    use {'JuliaEditorSupport/julia-vim'}

    use {'kyazdani42/nvim-web-devicons'}
    use {'kyazdani42/nvim-tree.lua'}

    -- Status and buffer line
    use {'glepnir/galaxyline.nvim', requires = 'kyazdani42/nvim-web-devicons', branch = 'main'}
    use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}

    -- Telescope
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-lua/popup.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {
        'nvim-telescope/telescope-frecency.nvim',
        requires = {'tami5/sql.nvim'},
        config = function()
            require('telescope').load_extension('frecency')
        end
    }
    use {'nvim-telescope/telescope-symbols.nvim'}

    -- Telescope fzf
    use {'nvim-telescope/telescope-fzy-native.nvim'}

    -- Project
    use {'nvim-telescope/telescope-project.nvim'}
    use {'airblade/vim-rooter'}
    -- use {'tpope/vim-projectionist'}

    -- Better syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'nvim-treesitter/playground'}

    use {'hrsh7th/nvim-compe'}

    -- Neoterm
    use {'kassio/neoterm'}

    use {'karb94/neoscroll.nvim'}

end)
