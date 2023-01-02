# problem definition: https://projecteuler.net/problem=12

function pyth_triplets(n)
    m = collect(1:n)
    products = Int[]
    for i in 1:n
        for j in 1:n
            if i < j
                z = (i^2 + j^2)^0.5
                if z in m && (i + j + z == n)
                    push!(products, i, j, z)
                    break
                end
            end
        end
    end
    return prod(products)
end

println(pyth_triplets(1000))