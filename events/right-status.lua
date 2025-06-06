local wezterm = require("wezterm")
local math = require("utils.math")
local M = {}

--M.separator_char = " ~ "
M.separator_char = ' |  '

M.colors = {
  date_fg      = "#7F82BB",
  date_bg      = "#0F2536",
  battery_fg   = "#BB49B3",
  battery_bg   = "#0F2536",
  separator_fg = "#786D22",
  separator_bg = "#0F2536",
}

M.cells = {} -- wezterm FormatItems (ref: https://wezfurlong.org/wezterm/config/lua/wezterm/format.html)

---@param text string
---@param icon string
---@param fg string
---@param bg string
---@param separate boolean
M.push = function(text, icon, fg, bg, separate)
  table.insert(M.cells, { Foreground = { Color = fg } })
  table.insert(M.cells, { Background = { Color = bg } })
  table.insert(M.cells, { Attribute = { Intensity = "Bold" } })
  table.insert(M.cells, { Text = icon .. " " .. text .. " " })

  if separate then
    table.insert(M.cells, { Foreground = { Color = M.colors.separator_fg } })
    table.insert(M.cells, { Background = { Color = M.colors.separator_bg } })
    table.insert(M.cells, { Text = M.separator_char })
  end

  table.insert(M.cells, "ResetAttributes")
end

M.set_date = function()
  local date = wezterm.strftime(" %a %-d %b %H:%M:%S")
  M.push(date, "", M.colors.date_fg, M.colors.date_bg, true)
end

M.set_battery = function()
  -- ref: https://wezfurlong.org/wezterm/config/lua/wezterm/battery_info.html
  local discharging_icons = { "󰂃", "󰁻", "󰁼", "󰁽", "󰁾", "󰁿", "󰂀", "󰂁", "󰂂", "󰁹" }
  local charging_icons = { "󰢜", "󰂆", "󰂇", "󰂈", "󰢝", "󰂉", "󰢞", "󰂊", "󰂋", "󰂅" }

  local charge = ''
  local icon = ''

  for _, b in ipairs(wezterm.battery_info()) do
    local idx = math.clamp(math.round(b.state_of_charge * 10), 1, 10)
    charge = string.format('%.0f%%', b.state_of_charge * 100)
    
    if b.state == 'Charging' then
      icon = charging_icons[idx]
    else
      icon = discharging_icons[idx]
    end
  end

  M.push(charge, icon, M.colors.battery_fg, M.colors.battery_bg, false)
end

M.setup = function()
  wezterm.on("update-right-status", function(window, _pane)
    M.cells = {}
    M.set_date()
    M.set_battery()

    window:set_right_status(wezterm.format(M.cells))
  end)
end

return M
