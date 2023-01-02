# problem definition: https://projecteuler.net/problem=12

function triangular_number(n)
	sum(1:n)
end

function divisor_count(n)
	divisors = n .% collect(1:n)
	return mapreduce(x -> x == 0 ? 1 : 0, +, divisors)
end

function divisible_triangular_number(n)
	index = 1
	while divisor_count(triangular_number(index)) < n
		index += 1
	end
	return triangular_number(index)
end

println(divisible_triangular_number(500))