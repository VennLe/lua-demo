-- lua中的字符串是不可变值，只能通过创建一个新的字符串的方式来达到修改的目的，例如：
local a = 'one string'
local b = string.gsub(a, "on",'ston')
print(a)
print(b)

--lua 中的字符串是自动内存管理的机制，编译器会负责字符串的分配和释放

-- 使用 ..  将两个字符串进行连接

print('hello' .. 'world')

--强制类型转换
local s = math.pi   -- lua中的pi不是数学精确值pi,而是计算机中的浮点数近似值
print(math.sin(s))

-- lua在进行自动类型转换时,, 尤其在5.3开始，当两个数至少有一个不是number类型时，会被默认转化为浮点数进行处理
print('23' + 2)


-- 显示的将一个字符串转换为数字，可以使用tonumber方法，如果出现的情况是不一样的化
local c = tonumber('0xfff', 16)   -- 将某个进制数转化为10进制数
print(c)