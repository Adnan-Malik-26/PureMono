local palette = require("monoknight.colors.palette")
local ret = vim.deepcopy(require("monoknight.colors.storm"))

---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = palette.true_black,
  bg_dark = palette.true_black,
  bg_dark1 = palette.true_black,
})
