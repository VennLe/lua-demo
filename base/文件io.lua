-- 写文件
-- w 覆盖写，a 追加写
local file = io.open("test.txt", 'a')
if file == nil then
    print("文件打开失败")
    return
end
file: write("123\n")
file: write("123\n")
file:close()

-- 读文件
local f = io.open("test.txt", 'r')
if f == nil then
    print("文件打开失败")
    return
end
local content = f:read("*a")   -- 读取所有内容
print(content)
f:close()