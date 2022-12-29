# problem definition: https://projecteuler.net/problem=2

function fib(n)
	n==1 && return 1
	n==2 && return 2
	return fib(n-1) + fib(n-2)
end

function fib_sum_even(n)
    index = 1
	fib_newest = 0
	even_sum = 0
	while fib_newest < n
		fib_newest = fib(index)
		index += 1
		if fib_newest % 2 == 0
			even_sum += fib_newest
		end
	end
	return even_sum
end

println(fib_sum_even(4000000))