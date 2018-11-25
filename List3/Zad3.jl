#Oskar Makowski 236554

f(x) = x^2 - 612

function msiecznych(f, x0::Float64, x1::Float64, delta::Float64, epsilon::Float64, maxit::Int)
	err = 0
	a = x0
	b = x1
	fa = f(a)
	fb = f(b)

	for k = 1 : maxit
		if abs(fa) > abs(fb)
			temp = a
			a = b
			b = temp

			temp = fa
			fa = fb
			fb = temp		
		end

		s = (b - a) / (fb - fa)
		b = a
		fb = fa
		a = a - fa * s
		fa = f(a)

#		println(a, " ", fa)

		if abs(b - a) < delta || abs(fa) < epsilon
			return 	a, fa, k, err
		end
	end

	err = 1
	return a, fa, maxit, err
end
