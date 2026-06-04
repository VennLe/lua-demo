-- Lua 中的每个值都可以有一个元值 。该元表是一个普通的 Lua 表，定义了原始值在特定事件下的行为。
-- 你可以通过在元表中设置特定字段来改变值的多个行为方面。例如，当非数值值是加法的操作数时，
-- Lua 检查该值元表的字段 __add 中是否有函数。如果找到一个，Lua 会调用该函数来执行加法。

local t1 = {12,34,43}
local t2 = {123,45,67,89}
local m = math.min(#t1, #t2)
local mt = {
    __add = function (a, b)
        local t3 = {}
        for i = 1, m do
            t3[i] = a[i] + b[i]
        end
        return t3
    end
}


-- 须给两个表一起设置这个元表，这样才可以相加
setmetatable(t1, mt)
setmetatable(t2, mt)
print(table.concat(t1 + t2, ","))

local t = {2,3,54,65,77}
setmetatable(t, {
    __tostring = function (t)
        return table.concat(t, ',')
    end
})
print(tostring(t))

-- 元方法只能对设定的两个表给定某个关系或操作

-- 实践案例
-- 1.将两个不同的表合并，并且得到一个顺序排列的新表 (待解决)
local a1 = {243,54,76,8,32}
local a2 = {3,5,96,43287,324}
local A = {
    __add = function (a, b)
        local max_len, new_arr = math.max(#a, #b), {a[1]}
        for i = 1, max_len do
            if a[i] > math.max(new_arr[i]) then
                table.insert(new_arr, i, b[i])
                table.insert(new_arr, i + 1, b[i])
            end
        end
    end
}
