-- get max key in table
function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do if mn < k then mn = k end end
    return mn
end

-- table add
mytable = setmetatable({1, 2, 3, 4}, {
    __add = function(mytable, newtable)
        -- print(table_maxn(newtable))
        for i = 1, table_maxn(newtable) do
            table.insert(mytable, table_maxn(mytable) + 1, newtable[i])
        end
        return mytable
    end
})

secondtable = {"foo", "bar", "hello", "world"}

mytable = mytable + secondtable

for k, v in pairs(mytable) do print(k, v) end
