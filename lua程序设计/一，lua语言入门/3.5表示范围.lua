-- 打印出来的结果是nil  nil
-- 因为这个用法是在Lua.5.3才开始支持的，当前机器上的lua环境是5.1
local mi = math.maxinteger
local mini = math.mininteger
print(mi)
print(mini)

-- 此用法是在Lua.5.3才开始支持的，当前机器上的lua环境是5.1
-- 该方法不存在，执行会报错
-- local n = 23
-- print(math.tointeger(n))   -- 可以用来判断一个变量是不是整数


-- 先判断对象的某个函数是否存在，然后再去调用，应该不会报错
if not math.tointeger then
    print("this method does not exist.")
end

local a = 2322
local index = string.find(a, '%.')  -- 这里如果不加百分号就匹配的是任意字符，
print(index)

-- **1.练习：下面代码的输出结果是什么(这个输出结果有些奇怪，值得研究一番)
for i = -10, 10 do
    print(i, i % 3)
end

-- 2.练习：表达式2^3^4的值是什么？表达式2^-3^4呢?
print(2^3^4)
print(2^-3^4)  --在 Lua 中，幂运算（^）是右结合的，也就是从右向左计算

