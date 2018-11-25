#Oskar Makowski 236554

function mbisekcji(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64)
	M = 1000000
	err = 0
	u = f(a)
	v = f(b)
	middle = b - a

	if sign(u) == sign(v)
		err = 1
		return a, u, 0, err
	end

	for i = 1 : M
		middle = middle / 2
		c = a + middle
		w = f(c)

		if abs(middle) < delta || abs(w) < epsilon
			return c, w, i, err
		end

#		println(a, " ", b, " ", c, " ", w)

		if sign(w) != sign(u)
			b = c
			v = w
		else
			a = c
			u = w
		end
	end
end
