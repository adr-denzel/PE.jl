# problem definition: https://projecteuler.net/problem=14

function collatz_length(n)
	distance = 1
	while n != 1
		if iseven(n)
			n = n / 2
		else
			n = 3n + 1
		end
		distance += 1
	end
	return distance
end

function longest_collatz_sequence(n)
	collatz_lengths = map(collatz_length, collect(1:(n-1)))
	return findfirst(isequal(maximum(collatz_lengths)), collatz_lengths)
end

println(longest_collatz_sequence(100000))
