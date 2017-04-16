--------------------------------
--  TLMF Pink Awesome theme   --
--------------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gfs = require("gears.filesystem")
local themes_path = gfs.get_dir("config") .. "them/"
local theme = {}

theme.font          = "DejaVu Sans Mono 8"

theme.bg_normal     = "#ff1cae"
theme.bg_focus      = "#bc8f8f"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#ffff00"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#ff0000"
theme.fg_focus      = "#871f78"
theme.fg_urgent     = "#871f78"
theme.fg_minimize   = "#871f78"

theme.useless_gap   = 0
theme.border_width  = dpi(2)
theme.border_normal = "#ff1cae"
theme.border_focus  = "#bc8f8f"
theme.border_marked = "#4f2f4f"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
   taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
   taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."Pink/submenu.png"
theme.menu_height = dpi(16)
theme.menu_width  = dpi(128)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."Pink/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."Pink/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."Pink/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."Pink/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."Pink/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."Pink/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."Pink/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."Pink/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."Pink/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."Pink/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."Pink/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."Pink/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."Pink/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."Pink/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."Pink/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."Pink/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."Pink/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."Pink/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."Pink/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."Pink/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."Pink/archlinux-ekisho-carbonite.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."Pink/layouts/fairhw.png"
theme.layout_fairv = themes_path.."Pink/layouts/fairvw.png"
theme.layout_floating  = themes_path.."Pink/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."Pink/layouts/magnifierw.png"
theme.layout_max = themes_path.."Pink/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."Pink/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."Pink/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."Pink/layouts/tileleftw.png"
theme.layout_tile = themes_path.."Pink/layouts/tilew.png"
theme.layout_tiletop = themes_path.."Pink/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."Pink/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."Pink/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."Pink/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."Pink/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."Pink/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."Pink/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
   theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
