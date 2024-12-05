# Lua Table Modification Surprise

This example demonstrates a common misunderstanding regarding table modification within Lua functions.  Lua passes tables by reference, meaning changes *inside* the function affect the original table. However, this only applies if you directly modify the table's contents.  Simply assigning `nil` to the table parameter *does not* modify the original table.

The `bug.lua` file showcases this issue. The function `foo` attempts to clear the table, but the original `myTable` remains unchanged. The solution shows the correct way to modify the table, either by directly changing entries or using `table.clear()`