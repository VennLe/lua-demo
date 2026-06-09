-- 
-- local file = io.open('test.txt')
io.input('test.txt')
local line = io.read('*l')
while line do
    print(line)
    line = io.read('*l')
end