-- table 不会固定长度大小，有新数据添加时 table 长度会自动增长，没初始的 table 都是 nil。

-- table_test3.lua 脚本文件
a3 = {}
for i = 1, 10 do
    a3[i] = i
end
a3["key"] = "val"
print(a3["key"])
print(a3["none"])