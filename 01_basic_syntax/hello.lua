#!/bin/lua

-- 单行注释
print('hello world')

--[[
奇怪的多行注释
奇怪的多行注释
奇怪的多行注释
--]]

-- 全局变量不需要声明，给一个变量赋值后即创建了这个全局变量，访问一个没有初始化的全局变量也不会出错，只不过得到的结果是：nil。
print(v)
v = 10
print(v)
-- 如果你想删除一个全局变量，只需要将变量赋值为nil。
v = nil
print(v)