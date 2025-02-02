-- lua/rimuru/colors.lua
local M = {}

M.colors = {
    -- Base colors
    base = {
        human = {
            bg = '#1A1B26',
            fg = '#F8F9FF',
            accent = '#4FC3F7',
        },
        demon_lord = {
            bg = '#0A0B16',
            fg = '#F8F9FF',
            accent = '#FFD700',
        },
        slime = {
            bg = '#152238',
            fg = '#E0E7FF',
            accent = '#81D4FA',
        }
    },

    -- Syntax highlighting
    syntax = {
        keywords = '#4FC3F7',
        functions = '#81D4FA',
        strings = '#89DDFF',
        variables = '#E0E7FF',
        numbers = '#FFD700',
        constants = '#0288D1',
        operators = '#89DDFF',
        comments = '#676E95',
    },

    -- UI elements
    ui = {
        line_nr = '#232637',
        line_bg = '#283457',
        selection = '#283457',
        visual = '#3B4674',
        pmenu = '#1E2132',
    },

    -- Git colors
    git = {
        add = '#81D4FA',
        change = '#FFD700',
        delete = '#FF5370',
    },

    -- Diagnostics
    diagnostics = {
        error = '#FF5370',
        warning = '#FFCB6B',
        info = '#82AAFF',
        hint = '#C3E88D',
    }
}

return M