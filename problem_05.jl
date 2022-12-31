# problem definition: https://projecteuler.net/problem=5

function smallest_multiple(n)
	arr = collect(1:n)
	candidate = 1
	while candidate .% arr != zeros(20)
		candidate += 1
	end
	return candidate
end

println(smallest_multiple(20))
