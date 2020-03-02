array = {"lua", "tutorial"}

for i = 0, 2 do print(array[i]) end
for i = 1, 3 do print(array[i]) end

-- 正如你所看到的，我们可以使用整数索引来访问数组元素，如果知道的索引没有值则返回nil。
-- 在 Lua 索引值是以 1 为起始，但你也可以指定 0 开始。
-- 除此外我们还可以以负数为数组索引值：

array = {}

for i = -2, 2 do array[i] = i * 2 end

for i = -2, 2 do print(array[i]) end
