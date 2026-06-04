local s = string.len("123")
local a = string.sub("123", 1, 2)  -- 截取字符串，1是起始位置，2是结束位置 [1,2]
local b = string.find("123", "3")
local c = string.rep("123", 3, "@")  -- 当前lua版本5.1不支持加分隔符参数
local g = string.gsub("123", "1", "4")  -- 字符串替换
local f = string.format("%s--%d", "123", 66)  -- 格式化输出字符串
print(c)
print(s)
print(a)
print(b)
print(f)
print(g)