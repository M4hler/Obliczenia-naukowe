#Oskar Makowski 236554

i = Float64(1)
x = Float64(8.0^-i)

while Float64(sqrt(x^2 + 1) - 1) > 0 || Float64(x^2 / (sqrt(x^2 + 1) + 1)) > 0
	fx = Float64(sqrt(x^2 + 1) - 1)
	gx = Float64(x^2 / (sqrt(x^2 + 1) + 1))

	println(i, " f(x) = ", fx, " g(x) = ", gx)

	i += Float64(1)
	x = Float64(8.0^-i)
end
