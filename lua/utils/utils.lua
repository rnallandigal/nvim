local utils = {}

-- sentinel value used to determine if the user wants to set the value to nil
utils.NIL = {}

-- modifies tbl according to rules in remap
-- 1. NIL deletes corresponding key in tbl
-- 2. string value indicates to replace the corresponding key with the value of the given key
local function recursive_remap(tbl, remap)
  for key, value in pairs(remap) do
    if (value == utils.NIL) then
      tbl[key] = nil
    elseif (type(value) == "string") then
      tbl[key] = tbl[value]
    elseif (type(value) == 'table' and type(tbl[key]) == 'table') then
      tbl[key] = recursive_remap(tbl[key], value)
    end
  end
  return tbl
end

-- extends defaults with the custom table and applies any remappings
utils.tbl_deep_extend_with_remap = function(default, custom, remap)
  return recursive_remap(vim.tbl_deep_extend("force", default, custom), remap)
end

return utils
