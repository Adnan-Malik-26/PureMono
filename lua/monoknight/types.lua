---@class monoknight.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias monoknight.Highlights table<string,monoknight.Highlight|string>

---@alias monoknight.HighlightsFn fun(colors: ColorScheme, opts:monoknight.Config):monoknight.Highlights

---@class monoknight.Cache
---@field groups monoknight.Highlights
---@field inputs table
