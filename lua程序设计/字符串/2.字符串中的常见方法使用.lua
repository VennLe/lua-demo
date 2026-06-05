-- string.byte()

local s1 = 'avns'

local a = string.byte(s1, 2)   -- 输出字符串中指定索引的字符的ascii码值
local b, c, e = string.byte(s1, 2, -1)  -- 输出字符串中指定索引2到最后一个索引之间范围的所有字符的ascii码值（默认如果只有一个变量去接收，就是只有第一个值）
print(a)
print(b)

-- string.char()
print(string.char(c, e)) --   -----> 打印出的是 ns, 读者自证不难

-- string.format()   格式化字符串
-- %d 十进制数，%f 浮点数 %x 十六进制数

print('s = '..s1)  -- 打印字符串，这个简单许多

-- 在打印年份时，通常需要用空格补齐，这个很常见
local year = string.format('year = %04d-%02d-%02d', 2026, 6, 5)  -- 这其中0是占位符
print(year)


-- string.find(str，'l')  查找字符串str中子串'l'出现的第一个位置，例如:
local str = 'hello world'
print(string.find(str, 'l'))  -- find方法有两个返回值，第一个是‘l’首次出现的索引值，第二个是在整个字符串中，‘l’总共有多少个

-- string.gsub(str, 'l', 'a') 用字符“a”将字符串中的所有“l”进行替换
print(string.gsub(str, 'l', 'a'))   -- gsub这个方法也有两个返回值，第一是替换完后的字符串值，第二个是实际总共替换的字符个数