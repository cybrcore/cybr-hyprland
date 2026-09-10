---------------------------------------
-- cybrcore    lucid colors variables for hyprland
-- Project:    https://github.com/cybrcore/cybr-hyprland
-- Author:     scherrer-txt   |   License:     GPL-3.0
-- Source:     ~/.config/hypr/colors.lua
---------------------------------------

-- COLORS
-- Used in theme.lua in two parts:
    -- The color value (rgb), ex. `F24848`
    -- The alpha channel (a), ex. `FF`
    -- Which looks like `rgba(" .. re0 .. trF .. ")`, but reads `F24848FF`, which is re0

local colors = {
    -- BLACK
    no0 = "030408",
    no1 = "05070D",
    no2 = "0A0E1A",
    -- RED
    re0 = "F24848",
    re1 = "631F21",
    re2 = "331215",
    -- GREEN
    gr0 = "30F291",
    gr1 = "15633F",
    gr2 = "0C3423",
    -- YELLOW
    ye0 = "F2D230",
    ye1 = "635618",
    ye2 = "332D10",
    -- BLUE
    bl0 = "3061F2",
    bl1 = "152966",
    bl2 = "0C1737",
    -- VIOLET
    vi0 = "A130F2",
    vi1 = "421666",
    vi2 = "230D37",
    -- CYAN
    cy0 = "29BECC",
    cy1 = "124E56",
    cy2 = "0B292F",
    -- WHITE
    wh0 = "898D99",
    wh1 = "393B42",
    wh2 = "1E2025",
    -- GREY
    me0 = "4D5A80",
    me1 = "212638",
    me2 = "0D1120",
    -- ORANGE
    or0 = "F26118",
    or1 = "63290E",
    or2 = "33170B",
    -- PINK
    pi0 = "F230B2",
    pi1 = "63164C",
    pi2 = "330D2A",
    -- TRANSPARENCY
    tr0 = "00",
    tr2 = "20",
    tr5 = "50",
    tr7 = "70",
    trF = "FF", -- FULL
}

return colors
