# problem definition: https://projecteuler.net/problem=6

function sum_square_difference(n)
    sum_of_squares = mapreduce(x -> x^2, +, collect(1:n))
    sum_array = sum(collect(1:n))
    return (sum_array)^2 - sum_of_squares
end

println(sum_square_difference(100))