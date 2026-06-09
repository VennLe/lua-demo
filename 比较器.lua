-- 比较器
local a = {{name = 'jack', age = 22}, {name = 'mark', age = 15}, {name = 'Pony', age = 40}}
local comp = function (x ,y)
    return x.age > y.age
end
table.sort(a, comp)
for key, value in pairs(a) do
        print(key, value.name, value.age)
end