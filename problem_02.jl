# problem definition: https://projecteuler.net/problem=2

function even_fib_sum(n)
	arr = [1,2]
	while sum(arr[end-1:end]) < n
		push!(arr, sum(arr[end-1:end]))
	end
	return mapreduce(x -> iseven(x) ? x : 0, +, arr)
end

println(even_fib_sum(4000000))
