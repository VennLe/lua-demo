-- 当函数只有一个参数且该参数的字符串常量或表构造器时，括号时可选的:
function add(a)
    print(a)
end

add "df"  -- 只有在函数调用时，才可以使用这种省略括号的使用方法


-- Lua程序既可以调用lua编写的函数也可以调用c语言(或者宿主程序使用的任意其他语言)编写的函数
globalCounter = 0

-- 示例
function intCount(n)
    n = n or 1  -- 这个用法十分巧妙，有点像是函数参数默认值的意思，即有传参时就用传参的值，如果没有就直接用默认的值
    n = globalCounter + n
end

-- 返回列表中的最大值及其索引
local arr = {14,65,32,31,5435, 1}
function printMaxNum(a)
    local index, num = 1, arr[1]
    for i = 2, #arr do
        if arr[i] > num then
            index = i; num = arr[i]
        end
    end
    return index, num
end
print(printMaxNum(arr))   -- lua语言根据函数的被调用情况调整返回值的数量

-- ** 以下情况，函数的多返回值只会取到其中的第一个
-- 当函数调用是在一系列表达式中的非最后一个的时候
local function f2()
    return 2, 3
end
local a, b, c = 1, f2(), 4  -- 放在中间，只取到了第一个值
local a1, b1, c1 = f2(), 5   -- 可以看到，虽然f2()有两个返回值，但是却只取到了第一个
local a2, b2, c2 = 6, f2()  -- 放到最后才可以完整的取到
print(a,b,c)
print(a1,b1,c1)
print(a2,b2,c2)
print(f2())
print("d"..f2()) -- d2



-- 可变长参数函数
-- 返回所有参数的总和
function sum(...)
    local sum = 0
    for _, v in ipairs {...} do
        sum = sum + v
    end
    return sum
end

print(sum(1,2,3,4,5))

-- 
function fwrite(fmt, ...)
    local t = table.pack(...)   -- table.pack(...)   将可变参数打包放在表里面
    return io.write(string.format(fmt, ...))
end


-- 另一种遍历函数的可变长参数的方法是使用函数select
print(select(1, '1a', '2b', '3c'))
print(select(2, '1a', '2b', '3c'))
print(select(3, '1a', '2b', '3c'))
print(table.unpack({'1a', '2b', '3c'}, 1, 3))    -- 打印可变参数的数量


-- 尾调用，当一个函数的最有一个动作是调用另一个函数而没有再进行其他工作时，就形成了尾调用
