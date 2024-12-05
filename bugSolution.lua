local function foo(t)
  -- Correct way to clear or modify the table
  for k in pairs(t) do
    t[k] = nil
  end
  -- OR use table.clear() if available (Lua 5.3+)   
  --table.clear(t) 
end

local myTable = {a = 1, b = 2}
foo(myTable)
print(myTable.a) -- Output: nil