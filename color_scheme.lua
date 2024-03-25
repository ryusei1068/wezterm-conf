local color_schemes = {
  "ChallengerDeep",
  "Cyberpunk",
  "Grape",
  "Duotone Dark",
  "Laser",
  "Sakura",
  "TokyoNight" }

function get_color_scheme()
  local current_date = os.date("*t")

  local year = current_date.year
  local month = current_date.month
  local day = current_date.day

  return color_schemes[(year * 365 + month * 30 + day) % 7]
end

return get_color_scheme()
