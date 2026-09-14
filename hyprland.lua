-- Odyssey's Omarchy 3 compositor styling, ported to Hyprland 0.55+ Lua.

local active_border_color = "rgb(d7790b)"
local inactive_border_color = "rgba(d7790b20)"

hl.config({
  general = {
    layout = "dwindle",
    gaps_in = 8,
    gaps_out = 16,
    border_size = 2,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },

  decoration = {
    rounding = 14,
    dim_special = 0.0,
    active_opacity = 1.0,
    inactive_opacity = 1.0,
    shadow = {
      enabled = true,
      range = 12,
      render_power = 3,
      color = "rgba(22222280)",
    },
    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      new_optimizations = true,
      xray = false,
      contrast = 0.85,
      brightness = 0.7,
      noise = 0.15,
      vibrancy = 1.0,
      vibrancy_darkness = 0.1,
      special = true,
    },
  },

  animations = {
    enabled = true,
  },
})

-- Preserve Odyssey's Space Monkey-derived slide profile. The legacy fade
-- override was intentionally disabled in the final Omarchy 3 revision.
hl.curve("odyssey-wind", {
  type = "bezier",
  points = { { 0.02, 0.9 }, { 0.1, 1.03 } },
})
hl.animation({ leaf = "windows", enabled = true, speed = 6, bezier = "odyssey-wind", style = "slide" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "odyssey-wind", style = "slide" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1, bezier = "odyssey-wind" })

hl.window_rule({
  match = { class = ".*" },
  tag = "-default-opacity",
  opacity = "1 override 1 override",
})
