
-- 日期格式化处理
local d = os.date('*t')
local d2 = os.date('*t')
print(d.year..'-'..d.month..'-'..d.day)
d2.day = d.day + 40
print(os.date('%Y-%m-%d', os.time(d)))

local s = os.difftime(os.time(d2), os.time(d))
print('s = '..s)


local t1 = os.time()  -- 默认是当前的时间戳
local t2 = os.date('*t')
t2.day = t2.day + 432

-- 使用difftime可以获取指定日期相对任意时刻的秒数
local myepoch = os.time{year = 2000 ,month = 1, day = 1, hour = 9}
local now =  os.time{year = 2015, month = 11, day = 20}
print(os.difftime(now, myepoch))


-- -- 常用格式符
local formats = {
    ["%Y"] = "四位年份: " .. os.date("%Y"),           -- 2023
    ["%y"] = "两位年份: " .. os.date("%y"),           -- 23
    ["%m"] = "月份(01-12): " .. os.date("%m"),       -- 01
    ["%d"] = "日(01-31): " .. os.date("%d"),         -- 19
    ["%H"] = "24小时制: " .. os.date("%H"),           -- 15
    ["%I"] = "12小时制: " .. os.date("%I"),           -- 03
    ["%M"] = "分钟: " .. os.date("%M"),               -- 30
    ["%S"] = "秒: " .. os.date("%S"),                 -- 00
    ["%A"] = "星期全名: " .. os.date("%A"),           -- Thursday
    ["%a"] = "星期缩写: " .. os.date("%a"),           -- Thu
    ["%B"] = "月份全名: " .. os.date("%B"),           -- January
    ["%b"] = "月份缩写: " .. os.date("%b"),           -- Jan
    ["%p"] = "AM/PM: " .. os.date("%p"),             -- PM
    ["%w"] = "星期(0-6): " .. os.date("%w"),         -- 4 (0=Sunday)
    ["%j"] = "年中的第几天: " .. os.date("%j"),       -- 019
    ["%W"] = "年中的第几周: " .. os.date("%W"),       -- 03
    ["%x"] = "日期: " .. os.date("%x"),              -- 01/19/23
    ["%X"] = "时间: " .. os.date("%X"),              -- 15:30:00
    ["%c"] = "完整日期时间: " .. os.date("%c"),       -- Thu Jan 19 15:30:00 2023
}

for fmt, desc in pairs(formats) do
    print(fmt .. ": " .. desc)
end