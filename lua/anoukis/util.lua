local function RGBToHSL(red, green, blue)
  local r, g, b = red / 255, green / 255, blue / 255
  local max, min = math.max(r, g, b), math.min(r, g, b)
  local h, s, l

  l = (max + min) / 2

  if max == min then
    h, s = 0, 0
  else
    local d = max - min
    s = l > 0.5 and d / (2 - max - min) or d / (max + min)
    if max == r then
      h = (g - b) / d + (g < b and 6 or 0)
    elseif max == g then
      h = (b - r) / d + 2
    elseif max == b then
      h = (r - g) / d + 4
    end
    h = h / 6
  end

  return h, s, l
end

local function HSLToRGB(h, s, l)
  local r, g, b

  if s == 0 then
    r, g, b = l, l, l
  else
    local function hue2rgb(p, q, t)
      if t < 0 then
        t = t + 1
      end
      if t > 1 then
        t = t - 1
      end
      if t < 1 / 6 then
        return p + (q - p) * 6 * t
      end
      if t < 1 / 2 then
        return q
      end
      if t < 2 / 3 then
        return p + (q - p) * (2 / 3 - t) * 6
      end
      return p
    end
    local q = l < 0.5 and l * (1 + s) or l + s - l * s
    local p = 2 * l - q
    r = hue2rgb(p, q, h + 1 / 3)
    g = hue2rgb(p, q, h)
    b = hue2rgb(p, q, h - 1 / 3)
  end

  return r * 255, g * 255, b * 255
end

local function darken_color(hex_color, factor)
  if hex_color:sub(1, 1) == "#" then
    hex_color = hex_color:sub(2)
  end

  if type(hex_color) ~= "string" or #hex_color ~= 6 or hex_color:find("%X") then
    error("Invalid hex color. Must be a 6 character hexadecimal string.")
  end

  if type(factor) ~= "number" or factor < 0 or factor > 1 then
    error("Invalid factor. Must be a number between 0 and 1.")
  end

  local r = tonumber(hex_color:sub(1, 2), 16)
  local g = tonumber(hex_color:sub(3, 4), 16)
  local b = tonumber(hex_color:sub(5, 6), 16)

  local h, s, l = RGBToHSL(r, g, b)

  -- Adjust lightness
  l = l * (1 - (1 - factor) / 2.71828182846)

  -- Clamp the lightness to be in the range [0, 1]
  l = math.max(0, math.min(l, 1))

  r, g, b = HSLToRGB(h, s, l)

  return "#" .. string.format("%02X%02X%02X", math.floor(r + 0.5), math.floor(g + 0.5), math.floor(b + 0.5))
end

return {
  darken_color = darken_color,
}
