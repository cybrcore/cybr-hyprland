---------------------------------------
-- cybrcore    lucid theme variables for hyprland
-- Project:    https://github.com/cybrcore/cybr-hyprland
-- Author:     scherrer-txt   |   License:     GPL-3.0
-- Source:     ~/.config/hypr/variables.lua
---------------------------------------

local variables = {
    -- BORDER & GAPS
    border = 1, -- Border width
    gapS = 4, -- Inner gaps
    gapM = 2, -- Outer gaps
    radius = 24, -- Optional: Try "0" to turn of the beveled edges
    power = 1.0, -- Rounding power (keep at "1.0" for beveled edges)
    activeTr = 1, -- Active window transparency
    inActiveTr = 1, -- Inactive window transparency

    -- TYPOGRAPHY
    font = "GeistMono Nerd Font",
    fontS = 10,
    fontM = 12,
    fontL = 16,
    fontXL = 64,

    -- BLUR
    blurSize = 6, -- Blur is power hungry, keep between 4-6 (tho many PCs should be able to run even 24)
    blurPass = 4, -- Passes are even more power hungry, keep between 2-6
    noise = 0.05,
}

return variables
