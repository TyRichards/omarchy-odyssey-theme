# Omarchy Odyssey Theme

Take a trip into a dark, psychedelic, Kubrick-inspired Omarchy Quattro theme with rich warm blacks, stale cream, and saturated mid-century primaries—a nod to the deep beauty of *2001: A Space Odyssey*.

![Omarchy Odyssey Theme Screenshot](preview.png)

## Install

```bash
omarchy theme install https://github.com/TyRichards/omarchy-odyssey-theme.git
```

## Quattro port

The old Waybar, Mako, Walker/Wofi, SwayOSD, and Hyprlock configs were retired. Their equivalent styling now lives in [`shell.toml`](shell.toml), where each Quickshell section is clearly labeled with its Omarchy 3 source.

[`colors.toml`](colors.toml) now follows Quattro's semantic palette convention while preserving Odyssey's intentionally unconventional ANSI color placement. Omarchy generates terminal, editor, Gum, Pi, Helix, Obsidian, VS Code, and other standard app themes from it.

### Hyprland

[`hyprland.lua`](hyprland.lua) preserves the amber active borders, 8/16px gaps, 14px rounding, shadows, heavy blur, full-opacity windows, and the final slide-animation profile. The fade override remains intentionally absent, matching the last Omarchy 3 revision.

Omarchy intentionally ignores executable Lua from a Git-cloned third-party theme. Normal installs still receive the safe generated amber borders from `colors.toml`; the complete compositor override is available when this repository is used as a trusted local theme.

## Additional assets

Hand-tuned Btop, Chromium, Zed/Aether, GTK, Vencord, Warp, and Zellij assets remain available alongside the Quattro-native core.

## Omarchy 3 archive

The complete pre-migration version is archived at [TyRichards/omarchy3-odyssey-theme](https://github.com/TyRichards/omarchy3-odyssey-theme).
