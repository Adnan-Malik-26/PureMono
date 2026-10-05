---@class MonoKnightPalette
local M = {
  black         = "#111111",
  charcoal      = "#1c1c1c",
  graphite      = "#2a2a2a",
  slate         = "#3a3a3a",
  gray          = "#4a4a4a",
  silver        = "#6b6b6b",
  ash           = "#8a8a8a",
  smoke         = "#b5b5b5",
  white         = "#e6e6e6",
  bright_white  = "#ffffff",

  red           = "#c4c4c4",
  light_red     = "#d1d1d1",
  dark_red      = "#adadad",
  rose          = "#cacaca",
  salmon        = "#c5c5c5",
  coral         = "#c8c8c8",

  orange        = "#dddddd",
  light_orange  = "#e5e5e5",
  dark_orange   = "#d1d1d1",
  peach         = "#d7d7d7",
  apricot       = "#dadada",

  yellow        = "#d1d1d1",
  light_yellow  = "#e4e4e4",
  dark_yellow   = "#c1c1c1",
  cream         = "#d9d9d9",
  sand          = "#cecece",
  olive         = "#c4c4c4",

  green         = "#c5c5c5",
  light_green   = "#d8d8d8",
  dark_green    = "#b5b5b5",
  sage          = "#c0c0c0",
  mint          = "#d5d5d5",
  moss          = "#b0b0b0",

  cyan          = "#cecece",
  light_cyan    = "#e0e0e0",
  dark_cyan     = "#b9b9b9",
  aqua          = "#d3d3d3",
  teal          = "#c2c2c2",
  turquoise     = "#dcdcdc",

  blue          = "#c8c8c8",
  light_blue    = "#dedede",
  dark_blue     = "#b6b6b6",
  sky           = "#d1d1d1",
  steel         = "#bebebe",
  navy          = "#9fa3a8",

  purple        = "#cfcfcf",
  light_purple  = "#e0e0e0",
  dark_purple   = "#bcbcbc",
  lavender      = "#d7d7d7",
  lilac         = "#cecece",
  violet        = "#bfbfbf",

  magenta       = "#c2c2c2",
  soft_magenta  = "#c7c7c7",
  dusty_magenta = "#b8b8b8",
  mauve_magenta = "#c5c5c5",
  rose_magenta  = "#c6c6c6",

  -- Not in the named table: pure black, needed one shade below "black"
  -- for popup/statusline recede-depth (bg_dark / bg_dark1 layering).
  true_black    = "#000000",
}

return M
