# problem definition: https://projecteuler.net/problem=4

function largest_palidrome(n)
	x = 10^(n-1)
	y = 10^n - 1
	palindromes = []
	for i in x:y
		for j in x:y
			if string(prod([i, j])) == reverse(string(prod([i, j])))
				push!(palindromes, prod([i, j]))
			end
		end
	end
	return maximum(palindromes)
end

println(largest_palidrome(3))