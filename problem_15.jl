# problem definition: https://projecteuler.net/problem=15

function lattice_paths(k, n)
	x = collect(BigInt, n+1:k+n)
	y = collect(BigInt, 1:n)
	return reduce(*, x)/reduce(*, y)
end

println(lattice_paths(20,20))