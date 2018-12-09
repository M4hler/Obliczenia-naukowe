#Oskar Makowski 236554

function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
	wn = fx[length(fx)]
	wk = 0

	for i = length(fx) - 1 : -1 : 1
		wk = fx[i] + (t - x[i]) * wn
		wn = wk
	end

	t = wk
	return t
end

#x = Float64[3, 1, 5, 6]
#fx = Float64[1, 2, -0.375, 0.175]

#println("x = ", x)
#println("fx = ", fx)

#a = 3.0
#t = warNewton(x, fx, a)
#println("t = ", a, " w(t) = ", t)

#a = 1.0
#t = warNewton(x, fx, a)
#println("t = ", a, " w(t) = ", t)

#a = 5.0
#t = warNewton(x, fx, a)
#println("t = ", a, " w(t) = ", t)

#a = 6.0
#t = warNewton(x, fx, a)
#println("t = ", a, " w(t) = ", t)
