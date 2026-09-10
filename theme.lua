---------------------------------------
-- cybrcore    lucid theme config for hyprland
-- Project:    https://github.com/cybrcore/cybr-hyprland
-- Author:     scherrer-txt   |   License:     GPL-3.0
-- Source:     ~/.config/hypr/theme.lua
---------------------------------------

local variables = require("variables")
local colors = require("colors")

for k, v in pairs(variables) do _G[k] = v end
for k, v in pairs(colors) do _G[k] = v end

-- DECORATION
hl.config({
    general = {
        border_size = border,
        col = {
            inactive_border = "rgba(" .. cy0 .. tr0 .. ")",
            active_border = "rgba(" .. re0 .. trF .. ")",
        },
        gaps_in = gapS,
        gaps_out = gapM,
    },
    decoration = {
        rounding = radius,
        rounding_power = power,
        active_opacity = activeTr,
        inactive_opacity = inActiveTr,
        blur = {
            enabled = true,
            size = blurSize,
            passes = blurPass,
            noise = noise,
            ignore_opacity = true,
            new_optimizations = true,
            xray = false,
            popups = true,
        },
        shadow = {
            enabled = false,
            range = 10,
            scale = 20,
            render_power = 2,
            color = "rgba(" .. re0 .. tr2 .. ")",
            color_inactive = "rgba(" .. no0 .. tr2 .. ")",
        },
        dim_inactive = false,
        dim_strength = 1,
        dim_special = 0,
    },
    group = {
        col = {
            border_active = "rgba(" .. re0 .. trF .. ")",
            border_inactive = "rgba(" .. re1 .. trF .. ")",
            border_locked_active = "rgba(" .. vi0 .. trF .. ")",
            border_locked_inactive = "rgba(" .. vi0 .. tr7 .. ")",
        },
        groupbar = {
            col = {
                active = "rgba(" .. re0 .. trF .. ")",
                inactive = "rgba(" .. re1 .. trF .. ")",
                locked_active = "rgba(" .. vi0 .. trF .. ")",
                locked_inactive = "rgba(" .. vi0 .. tr7 .. ")",
            },
            font_size = fontM,
            text_color = "rgba(" .. no0 .. trF .. ")",
            height = 1,
            indicator_height = 24,
            text_offset = -12,
        },
    },

-- ANIMATIONS
    animations = {
        enabled = false,
    },
})
