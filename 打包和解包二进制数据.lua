--[[
    Lua 5.3 引入了一个在二进制和基本数据类型值（数值和字符串类型）之间进行转换的函数
    -- 格式化字符串中的字母都描述了如何进行打包/解包一个值
]]

-- 1. 打包两个整数和一个字符串
local packed = string.pack("I2", 100, 200, "hello")
print(packed) -- 输出一个二进制字符串，前4字节是100(小端序)，接着4字节是200，然后是"hello"

-- 2. 打包一个单精度浮点数
local packed_float = string.pack("f", 3.14)
print(string.len(packed_float)) -- 输出 4

-- 3. 打包一个双精度浮点数
local packed_double = string.pack("d", 3.14159265358979)
print(string.len(packed_double)) -- 输出 8

-- 4. 打包一个固定长度字符串 (c5)
local packed_fixed_str = string.pack("c5", "hi")
print(string.len(packed_fixed_str)) -- 输出 5 (内容为 'h', 'i', '\0', '\0', '\0')

-- 5. 打包并指定字节序
local packed_big_endian = string.pack(">I2", 256, 512)
-- 在大端序下，256被表示为 0x01 0x00，512被表示为 0x02 0x00

-- 6. 使用对齐 (假设我们想打包一个char, 然后一个int, 并且int需要4字节对齐)
--    格式 "b i" 会在char后自动填充3个字节
local packed_aligned = string.pack("b i", 65, 12345678)
print(string.len(packed_aligned)) -- 可能是 8 (1 + 3 padding + 4)

-- 7. 使用 !1 取消对齐
local packed_no_align = string.pack("!1 b i", 66, 87654321)
print(string.len(packed_no_align)) -- 应该是 5 (1 + 4)