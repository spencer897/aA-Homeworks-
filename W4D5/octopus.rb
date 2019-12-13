def clever(array)
    array.inject(0) do |acc, ele| 
        if ele.length > acc 
            ele.length
        else 
            acc
    end 
end 

def slow_dance(val,arr)
    return arr.index(val)
end 

def fast_dance(val, hash)
    return hash[val]
end 