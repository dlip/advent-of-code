local input = [[
Time:        44     82     69     81
Distance:   202   1076   1138   1458
]]

-- 288
local sample_input = [[
Time:      7  15   30
Distance:  9  40  200
]]

local function part_one(input)
  local data = {}
  for line in input:gmatch("[^\r\n]+") do
    local line_data = {}
    for value in line:gmatch("%d+") do
      table.insert(line_data, tonumber(value))
    end
    table.insert(data, line_data)
  end
  local times = data[1]
  local distances = data[2]
  local result = 1
  for i, time in ipairs(times) do
    local record = distances[i]
    local wins = 0
    for hold = 1, time do
      local remaning = time - hold
      local distance = hold * remaning
      if distance > record then
        wins = wins + 1
      end
    end
    result = result * wins
  end
  print(result)
end

-- part_one(input)

local function part_two(input)
  local data = {}
  for line in input:gmatch("[^\r\n]+") do
    local line_data = {}
    for value in line:gmatch("%d+") do
      table.insert(line_data, value)
    end
    local all_numbers = ""
    for _, num in ipairs(line_data) do
      all_numbers = all_numbers .. num
    end
    table.insert(data, {tonumber(all_numbers)})
  end
  local times = data[1]
  local distances = data[2]
  local result = 1
  for i, time in ipairs(times) do
    local record = distances[i]
    local wins = 0
    for hold = 1, time do
      local remaning = time - hold
      local distance = hold * remaning
      if distance > record then
        wins = wins + 1
      end
    end
    result = result * wins
  end
  print(result)
end

part_two(input)
