local sample_input = [[
???.### 1,1,3
.??..??...?##. 1,1,3
?#?#?#?#?#?#?#? 1,3,1,6
????.#...#... 4,1,1
????.######..#####. 1,6,5
?###???????? 3,2,1
]]

local function part_one(txt)
  for line in txt:gmatch("[^\r\n]+") do
    local chars = {}
    for char in line:gmatch(".") do
      table.insert(chars, char)
    end
  end
end

part_one(sample_input)
