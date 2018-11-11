#Oskar Makowski 236554

#a

a = Array{Float32}(41)
a[1] = 0.01
b = Array{Float32}(41)
b[1] = 0.01
c = Array{Float64}(41)
c[1] = 0.01
r = 3
println("1 ", a[1], " ", b[1], " ", c[1])

for i = 2:41
	a[i] = a[i - 1] + r * a[i - 1] * (1 - a[i - 1])
	b[i] = b[i - 1] + r * b[i - 1] * (1 - b[i - 1])
	c[i] = c[i - 1] + r * c[i - 1] * (1 - c[i - 1])

	if i == 11
		b[i] = 0.722
	end

	println(i, " ", a[i], " ", b[i], " ", c[i])
end
