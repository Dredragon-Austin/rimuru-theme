-- lua/rimuru/init.lua
local M = {}

-- Unique feature: Skill Animation System
M.skill_effects = {
    predator = {
        enabled = false,
        pattern = '│▒░▒│',
        speed = 100,
    },
    great_sage = {
        enabled = false,
        pattern = '▁▂▃▄▅▆▇█',
        speed = 80,
    }
}

-- Unique feature: Auto-changing themes based on time
M.auto_evolve = function()
    local hour = tonumber(os.date("%H"))
    if hour >= 6 and hour < 18 then
        -- Day form
        vim.g.rimuru_form = "human"
    else
        -- Night form
        vim.g.rimuru_form = "demon_lord"
    end
end

-- Configuration with unique features
function M.setup(opts)
    opts = opts or {}
    
    -- Default configuration
    local defaults = {
        style = "dark",
        transparent = false,
        term_colors = true,
        skill_effects = true,
        auto_evolve = false,
        integrations = {
            native_lsp = true,
            treesitter = true,
            telescope = true,
            nvim_tree = true,
            which_key = true,
            gitsigns = true,
            notify = true,
        }
    }
    
    -- Merge user options with defaults
    M.options = vim.tbl_deep_extend("force", defaults, opts)
    
    -- Enable auto evolution if configured
    if M.options.auto_evolve then
        vim.fn.timer_start(3600000, M.auto_evolve, {["repeat"] = -1})
    end
end

return M