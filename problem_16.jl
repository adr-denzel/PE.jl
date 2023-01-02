# problem definition: https://projecteuler.net/problem=16

function digit_sum(power)
    int_string = string(big(2)^power)
    arr = [x for x in int_string]
    return mapreduce(x -> parse(Int, x), +, arr)
end

println(digit_sum(1000))
