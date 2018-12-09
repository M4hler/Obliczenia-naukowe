#Oskar Makowski 236554

function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
	fx = copy(f)

	for i = 2 : length(x)
		for j = length(x) : -1 : i
			fx[j] = (fx[j] - fx[j - 1]) / (x[j] - x[j - i + 1])
		end
	end

	return fx;
end

#x = Float64[3, 1, 5, 6]
#f = Float64[1, -3, 2, 4]

#println("x = ", x)
#println("f = ", f)

#fx = ilorazyRoznicowe(x, f)
#println("fx = ", fx)
