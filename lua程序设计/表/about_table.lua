-- table (表) 是lua中唯一的一种数据结构，以一种简单，统一，高效的方式表示数组，集合，记录和其他很多数据结构。


-- lua中的表本质是一种辅助数组；可以认为，表是一种动态分配的对象，程序只是操作指向表的引用（指针），

local a = {}
local m = 'x'
a[m] = 10
a[20] = 'great'
print(a['x'])

local i, j, k = 10, "10", '+10';
local b = {}
b[i] = 'number key'
b[j] = 'string key'
b[k] = 'another string key'
print(b[i])
print(b[j])
print(b[k])
for key,v in pairs(b) do
    print(key, v)
end
-- 10      number key
-- +10     another string key
-- 10      string key
-- 可以看出来现在，当i,j,k这三个变量作为key给到表时，是会严格区分变量类型的，10，"10"， "+10"都是不同的键

-- 整形和浮点类型的表索引则不存在上述问题，
local c = {}
c[2.0] = 10
print(c[2])  -- 这里可以看出来，c[2]和c[2.0]是一致的, 因为2 就是 2.0
print(c[2.1])  -- 但这个是不一致的，