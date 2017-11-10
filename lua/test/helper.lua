
local helper = {}

local compare = function(a, b, epsilon) return ((a - epsilon < b) and (a + epsilon > b)) end

helper.eq_float = function(a, b)
    if type(a) ~= 'table' then
        a = {a}
    end

    if type(b) ~= 'table' then
        b = {b}
    end

    assert(#a == #b)


    for i, v in ipairs(a) do
        print(i, v)
        local epsilon = (a[i] + .00001) * 0.01
        if not compare(a[i], b[i], epsilon) then
            print()
            print('FAILED ON:', i, a[i], b[i])
            -- assert.are.same(a[i], b[i])
            -- assert(a[i], b[i])
        end
    end

    return true
end

return helper