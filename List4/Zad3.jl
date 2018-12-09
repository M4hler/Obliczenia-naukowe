#Oskar Makowski 236554

function naturalna(x::Vector{Float64}, fx::Vector{Float64})
	a = zeros(length(fx))
	a[length(fx)] = fx[length(fx)]

	for i = length(fx) - 1 : -1 : 1
		a[i] = fx[i] - a[i + 1] * x[i]
		
		for j = i + 1 : length(fx) - 1
			a[j] = a[j] - x[i] * a[j + 1]
		end
	end
	return a
end
