-- 与索引类似，表字段的值可以是任意类型。特别地，由于函数是一类值，表字段可以包含函数
local l = {
    1,2,3,4,5,
    dog = function ()
        print("dog")
    end,
}

l.cat = function ()
    print("cat")
end

l.dog()
l.cat()
