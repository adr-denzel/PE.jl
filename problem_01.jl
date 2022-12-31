# problem definition: https://projecteuler.net/problem=1

println(mapreduce(x -> (x % 3 == 0 || x % 5 == 0) ? x : 0, +, collect(1:999)))
