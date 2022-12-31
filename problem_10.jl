# problem definition: https://projecteuler.net/problem=10

function sum_primes(n)
    primes = [2]
    candidate_prime = primes[1]
    while primes[end] < n
        candidate_prime += 1
        counter = 0
        for i in eachindex(primes)
            candidate_prime % primes[i] == 0 && (counter += 1)
            (counter != 0) && break
        end
        counter == 0 && push!(primes, candidate_prime)
    end
    return sum(primes) - primes[end]
end

println(sum_primes(2000000))