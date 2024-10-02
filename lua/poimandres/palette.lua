local T = {}
--- palette variants
local main = {
  dark = { -- main palette
    yellow = '#FFFAC2',
    teal1 = '#5DE4C7',
    teal2 = '#5FB3A1',
    teal3 = '#42675A',
    blue1 = '#89DDFF',
    blue2 = '#ADD7FF',
    blue3 = '#91B4D5',
    blue4 = '#7390AA',
    pink1 = '#FAE4FC',
    pink2 = '#FCC5E9',
    pink3 = '#D0679D',
    blueGray1 = '#A6ACCD',
    blueGray2 = '#767C9D',
    blueGray3 = '#506477',
    background1 = '#303340',
    background2 = '#1B1E28',
    background3 = '#171922',
    text = '#E4F0FB',
    white = '#FFFFFF',
    none = 'NONE',
  },
  light = {
    yellow = '#FFFAC2',
    teal1 = '#5DE4C7',
    teal2 = '#5FB3A1',
    teal3 = '#42675A',
    blue1 = '#89DDFF',
    blue2 = '#ADD7FF',
    blue3 = '#91B4D5',
    blue4 = '#7390AA',
    pink1 = '#FAE4FC',
    pink2 = '#FCC5E9',
    pink3 = '#D0679D',
    blueGray1 = '#A6ACCD',
    blueGray2 = '#767C9D',
    blueGray3 = '#506477',
    background1 = '#D8DAE4',
    background2 = '#DEE0E8',
    background3 = '#171922',
    text = '#E4F0FB',
    white = '#FFFFFF',
    none = 'NONE',
  }
}

local palette = {}

palette.generate_palette = function(options, theme)
  local background = options.background or "dark"
  local base = main[theme]
  local background_palette

  if background == "dark" then
    background_palette = main[dark]
  elseif background == "light" then
    background_palette = main[light]
  end

  local combined_palette = vim.tbl_extend("force", base, background_palette)
  options.colours_override(combined_palette)

  return combined_palette
end

-- palette = variants.main

-- if vim.o.background == "light" then
-- 	palette = variants.main
-- else
-- 	palette = variants[(vim.g.poimandres_variant == "storm" and "storm") or "main"]
-- end

return palette
