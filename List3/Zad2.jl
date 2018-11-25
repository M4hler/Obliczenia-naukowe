#Oskar Makowski 236554

function mstycznych(f, pf, x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)
	err = 0
	v = f(x0)

	if abs(v) < epsilon
		return x0, v, 0, err
	end

	for k = 1 : maxit
		u = pf(x0)
		x1 = x0 - v / u
		v = f(x1)

#		println(k, " ", x1, " ", v)

		if abs(u) < epsilon
			err = 2
			return x1, v, k, err
		end

		if abs(x1 - x0) < delta || abs(v) < epsilon
			return x1, v, k, err
		end

		x0 = x1
	end

	err = 1
	return x0, v, maxit, err
end
