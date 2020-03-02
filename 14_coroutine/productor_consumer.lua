local newProductor

function productor()
    local i = 0
    while i < 20 do
        i = i + 1
        send(i)
    end
end

function consumer()
    local j = 0
    while j < 30 do
        j = j + 1
        local i = receive()
        print(i)
    end
end

function receive()
    local status, value = coroutine.resume(newProductor)
    return value
end

function send(x) coroutine.yield(x) end

newProductor = coroutine.create(productor)
consumer()
