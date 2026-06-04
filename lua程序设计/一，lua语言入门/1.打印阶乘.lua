-- 普通的循环
local n, res = 3, 1
for i = 2, n do
    res = res * i
end
print(n, "的阶乘是: ", res)

-- 递归方法
local function fact (s)
    if s == 0 then
        return 1
    else
        return s * fact(s-1)
    end
end

local f = fact(3)
print('f = ', f)

-- 读取一个数字
print("请输入一个数：")
local num = io.read('*n')
print(fact(num))

-- dofile 该函数会立即执行该文件的代码内容
dofile("coroutine.lua")