# problem definition: https://projecteuler.net/problem=7

function is_prime(n)
    if mapreduce(x -> n % x == 0 ? 1 : 0, +, collect(1:n)) == 2
	    return true
    else
        return false
    end
end

function nth_prime(n)
    primes = Int[]
    prime_candidate = 0
    while length(primes) < n
        prime_candidate += 1
        if is_prime(prime_candidate)
            push!(primes, prime_candidate)
        end
    end
    return primes[end]
end

println(nth_prime(10001))