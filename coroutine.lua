-- Lua 支持协程，也称为协同多线程 。Lua 中的协程代表一个独立的执行线程。然而，与多线程系统中的线程不同，协程仅通过显式调用 yield 函数来暂停执行。
-- 你通过调用 coroutine.create 来创建协程。它的唯一参数是一个函数，是协程的主要函数。create 函数只创建新的协程并返回一个句柄（线程类型对象）;它不会启动协程。

print('hello')

-- create 函数只创建新的协程并返回一个句柄（线程类型对象）;它不会启动协程。
-- 通过调用 coroutine.resume 来执行协程。当你第一次调用 coroutine.resume，
-- 并以 coroutine.create 返回的线程作为其第一个参数时，协程会从调用其主函数开始执行。
-- 传递给 coroutine.resume 的额外参数作为该函数的参数传递。协程开始运行后，会一直运行，直到终止或让出 
local c1 = coroutine.create(function(a, b)
    print("world!",a,b)
end)

coroutine.resume(c1, 23, 'dwdf')