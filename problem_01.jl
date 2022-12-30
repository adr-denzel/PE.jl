# problem definition: https://projecteuler.net/problem=1

function multiple_3_or_5(n)
    if n % 3 == 0 || n % 5 == 0
        return n
    else
        return 0
    end
end

println(mapreduce(multiple_3_or_5, +, collect(1:999)))
