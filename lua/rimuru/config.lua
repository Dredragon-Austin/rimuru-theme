-- lua/rimuru/config.lua
local M = {}

M.defaults = {
    -- Theme style
    style = 'human', -- 'human', 'demon_lord', or 'slime'
    
    -- Features
    transparent = false,
    term_colors = true,
    skill_effects = true,
    auto_evolve = false,
    
    -- Styles
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        sidebars = {},
        floats = {},
    },

    -- Skill effect settings
    skills = {
        predator = {
            enabled = true,
            animation_speed = 100,
        },
        great_sage = {
            enabled = true,
            suggestion_style = 'detailed',
        },
    },

    -- Plugin integrations
    integrations = {
        native_lsp = true,
        treesitter = true,
        telescope = true,
        nvim_tree = true,
        which_key = true,
        gitsigns = true,
        notify = true,
        indent_blankline = true,
        dashboard = true,
        bufferline = true,
        illuminate = true,
    },
}

function M.extend(opts)
    return vim.tbl_deep_extend("force", M.defaults, opts or {})
end

return M