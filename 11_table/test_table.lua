--[[
table 是 Lua 的一种数据结构用来帮助我们创建不同的数据类型，如：数组、字典等。

Lua table 使用关联型数组，你可以用任意类型的值来作数组的索引，但这个值不能是 nil。

Lua table 是不固定大小的，你可以根据自己需要进行扩容。

Lua也是通过table来解决模块（module）、包（package）和对象（Object）的。 例如string.format表示使用"format"来索引table string。
--]] -- 
-- 
-- table(表)的构造
-- 构造器是创建和初始化表的表达式。表是Lua特有的功能强大的东西。最简单的构造函数是{}，用来创建一个空表。可以直接初始化数组:
-- 初始化 table
mytable = {}

-- 指定值
mytable[1] = "lua"

-- 移除引用
mytable = nil
-- lua 垃圾回收会释放内存

--[[
当我们为 table a 并设置元素，然后将 a 赋值给 b，则 a 与 b 都指向同一个内存。如果 a 设置为 nil ，则 b 同样能访问 table 的元素。如果没有指定的变量指向a，Lua的垃圾回收机制会清理相对应的内存。

以下实例演示了以上的描述情况：--]]

-- 简单的 table
mytable = {}
print("mytable 的类型是", type(mytable))

mytable[1] = "lua"
mytable["wow"] = "修改前"
print("mytable 索引为 1 的元素是", mytable[1])
print("mytable 索引为 wow 的元素是", mytable["wow"])

-- alternatetable 和 mytable 指向同一个 table
alternatetable = mytable
print("alternatetable 索引为 1 的元素是", alternatetable[1])
print("alternatetable 索引为 wow 的元素是", alternatetable["wow"])

alternatetable["wow"] = "修改后"

print("mytable 索引为 wow 的元素是", mytable["wow"])

-- 释放变量
alternatetable = nil
print("alternatetable 是", alternatetable)

-- mytable is still accessible
print("mytable 索引为 wow 的元素是", mytable["wow"])

mytable = nil
print("mytable is", mytable)

-- Table 连接
-- 我们可以使用 concat() 输出一个列表中元素连接成的字符串:
fruits = {"banana", "orange", "apple"}
-- 返回 table 连接后的字符串
print("连接后的字符串 ", table.concat(fruits))
-- 指定连接字符
print("连接后的字符串 ", table.concat(fruits, ", "))
-- 指定索引来连接 table
print("连接后的字符串 ", table.concat(fruits, ", ", 2, 3))

-- 插入和移除
-- 以下实例演示了 table 的插入和移除操作:
-- 在末尾插入
table.insert(fruits, "mango")
print("索引为 4 的元素为 ", fruits[4])

-- 在索引为 2 的键处插入
table.insert(fruits, 2, "grapes")
print("索引为 2 的元素为 ", fruits[2])

print("最后一个元素为 ", fruits[5])
table.remove(fruits)
print("移除后最后一个元素为 ", fruits[5])

print("排序前")
for k, v in ipairs(fruits) do print(k, v) end

table.sort(fruits)
print("排序后")
for k, v in ipairs(fruits) do print(k, v) end
