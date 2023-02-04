---------------------------
-- Default awesome theme --
---------------------------
local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local rnotification = require("ruled.notification")
local gears = require("gears")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
-- local themes_path = gfs.get_themes_dir()
local themes_path = "~/.config/awesome/themes/"

local theme_colors = {
    nord0 = "#2E3440", -- base
    nord1 = "#3B4252",
    nord2 = "#434C5E",
    nord3 = "#4C566A",
    nord4 = "#D8DEE9",
    nord5 = "#E5E9F0",
    nord6 = "#ECEFF4", -- neutral
    nord7 = "#8FBCBB", -- sub-primary
    nord8 = "#88C0D0", -- primary
    nord9 = "#81A1C1", -- secondary
    nord10 = "#5E81AC", -- tertiary
    nord11 = "#BF616A", -- error
    nord12 = "#D08770", -- warning
    nord13 = "#EBCB8B",
    nord14 = "#A3BE8C", -- success
    nord15 = "#B48EAD", -- uncommon
    transparent = "#00000000"
}

local theme = {}

theme.base = theme_colors.nord0
theme.neutral = theme_colors.nord6
theme.sub_primary = theme_colors.nord7
theme.primary = theme_colors.nord8
theme.secondary = theme_colors.nord9
theme.tertiary = theme_colors.nord10
theme.error = theme_colors.nord11
theme.warning = theme_colors.nord12
theme.success = theme_colors.nord14
theme.uncommon = theme_colors.nord15

theme.font = "Roboto 10"
theme.transparent = theme_colors.transparent

theme.bg_normal = theme.base
theme.bg_focus = theme_colors.nord1
theme.bg_urgent = theme.error
theme.bg_minimize = theme.base
theme.bg_systray = theme.base

theme.fg_normal = theme.neutral
theme.fg_focus = theme_colors.nord4
theme.fg_urgent = theme.error
theme.fg_minimize = theme.nord4

theme.useless_gap = dpi(0)
theme.border_width = dpi(1)
theme.border_color_normal = theme_colors.nord3
theme.border_color_active = theme.primary
theme.border_color_marked = theme_colors.nord15

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
-- theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
                                taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
                                  taglist_square_size, theme.fg_normal)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

theme.notification_border_color = theme.primary
theme.notification_bg = theme.base
theme.notification_fg = theme.neutral

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "nord/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
-- theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path ..
                                         "nord/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themes_path ..
                                        "nord/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path ..
                                            "nord/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = themes_path ..
                                           "nord/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path ..
                                                  "nord/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path ..
                                                 "nord/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path ..
                                                "nord/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path ..
                                               "nord/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path ..
                                                   "nord/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path ..
                                                  "nord/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path ..
                                                 "nord/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themes_path ..
                                                "nord/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path ..
                                                     "nord/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path ..
                                                    "nord/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path ..
                                                   "nord/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path ..
                                                  "nord/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path ..
                                                      "nord/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path ..
                                                     "nord/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path ..
                                                    "nord/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path ..
                                                   "nord/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path .. "nord/abstract-nord.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path .. "nord/layouts/fairhw.png"
theme.layout_fairv = themes_path .. "nord/layouts/fairvw.png"
theme.layout_floating = themes_path .. "nord/layouts/floatingw.png"
theme.layout_magnifier = themes_path .. "nord/layouts/magnifierw.png"
theme.layout_max = themes_path .. "nord/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "nord/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "nord/layouts/tilebottomw.png"
theme.layout_tileleft = themes_path .. "nord/layouts/tileleftw.png"
theme.layout_tile = themes_path .. "nord/layouts/tilew.png"
theme.layout_tiletop = themes_path .. "nord/layouts/tiletopw.png"
theme.layout_spiral = themes_path .. "nord/layouts/spiralw.png"
theme.layout_dwindle = themes_path .. "nord/layouts/dwindlew.png"
theme.layout_cornernw = themes_path .. "nord/layouts/cornernww.png"
theme.layout_cornerne = themes_path .. "nord/layouts/cornernew.png"
theme.layout_cornersw = themes_path .. "nord/layouts/cornersww.png"
theme.layout_cornerse = themes_path .. "nord/layouts/cornersew.png"

-- Generate Awesome icon:
-- theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.base,
--                                                theme.primary)
theme.awesome_icon = themes_path .. "nord/arch-linux-logo.svg"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

-- Set different colors for urgent notifications.
rnotification.connect_signal('request::rules', function()
    rnotification.append_rule {
        rule = {urgency = 'critical'},
        properties = {bg = theme.error, fg = theme.neutral}
    }
end)

return theme
