# problem definition: https://projecteuler.net/problem=1

function multiple_of_3_or_5(x)
    if x % 3 == 0 || x % 5 == 0
        return x
    else
        return 0
    end
end

n = mapreduce(multiple_of_3_or_5, +, collect(1:999))
println(n)