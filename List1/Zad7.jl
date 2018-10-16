#Oskar Makowski 236554

#f(x) = sin(x) + cos(3x)

for i = 0:54
	derivative = Float64((sin(1 + 2.0^-i) + cos(3 * (1 + 2.0^-i)) - (sin(1) + cos(3))) / 2.0^-i)
	difference = abs(Float64(cos(1) - 3sin(3) - derivative))
	println(i, " ", 2.0^-i, " ", Float64(2.0^-i + 1), " ", derivative, " ", difference)
end
