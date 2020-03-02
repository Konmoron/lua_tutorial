function myfunction() n = n / nil end

if pcall(myfunction) then
    print("Success")
else
    print("Failure")
end

function myfunc2() print("hello world") end

if pcall(myfunc2) then
    print("Success")
else
    print("Failure")
end
