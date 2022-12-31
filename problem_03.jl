# problem definition: https://projecteuler.net/problem=3

function find_factors(n)
	factors  = n .% collect(1:n)
	return findall(iszero, factors)
end

function find_primes(n)
	prime_factor_positions = findall(x -> length(x) == 2, map(find_factors, n))
	return n[prime_factor_positions]
end

function largest_prime_factor(n)
	candidate_primes = [1]
	candidate_factor = 1
	while prod(candidate_primes) < n
		candidate_factor += 1
		if n % candidate_factor == 0
			push!(candidate_primes, candidate_factor)
		end
	end
	return find_primes(candidate_primes)[end]
end

println(largest_prime_factor(600851475143))