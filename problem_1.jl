# problem definition: https://projecteuler.net/problem=1

function multiple_3_or_5(x)
    if x % 3 == 0 || x % 5 == 0
        return x
    else
        return 0
    end
end

function sum_multiples(n)
    return mapreduce(multiple_3_or_5, +, collect(1:n))
end

println(sum_multiples(999))