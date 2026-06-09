-- 
local f, s = assert(io.open('tes.txt', 'r'))
if s ~= nil then
    print('failed')
end

io.close(f)
