function myfunc() n = n / nil end

function myerrhandler(err) print("ERROR:", err) end

status = xpcall(myfunc, myerrhandler)
print(status)

function myfunc2() print("hello world") end

status = xpcall(myfunc2, myerrhandler)
print(status)
