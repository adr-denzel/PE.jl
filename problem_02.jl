# problem definition: https://projecteuler.net/problem=2

function fib(n)
	n==1 && return 1
	n==2 && return 2
	return fib(n-1) + fib(n-2)
end

function even_fib_sum(n)
	index = 1
	current = 0
	sum = 0
	while current < n
		current = fib(index)
		if current % 2 == 0
			sum += current
		end
        index += 1
	end
	return sum
end

println(even_fib_sum(4000000))
