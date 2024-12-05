local function foo(t)
  for k, v in pairs(t) do
    print(k, v)
  end
  t = nil  -- This line doesn't affect the original table
end

local myTable = {a = 1, b = 2}
foo(myTable)
print(myTable.a) -- Output: 1 (The table is not modified)