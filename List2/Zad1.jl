#Oskar Makowski 236554

exact = Float32(-1.00657107e-10)
x = [Float32(2.718281828), Float32(-3.141592654), Float32(1.414213562), Float32(0.577215664), Float32(0.301029995)]
y = [Float32(1486.2497), Float32(878366.9879), Float32(-22.37492), Float32(4773714.647), Float32(0.000185048)]

println("Float32")
#a
S = Float32(0)
for i = 1:5
	S += Float32(x[i] * y[i])
end

difference = Float32(abs(S - exact))
println(S, " roznica: ", difference)

#b
S = Float32(0)
for i = 5:-1:1
	S += Float32(x[i] * y[i])
end

difference = Float32(abs(S - exact))
println(S, " roznica: ", difference)

#c
z = [Float32(0), Float32(0), Float32(0), Float32(0), Float32(0)]
S = Float32(0)
for i = 1:5
	z[i] = Float32(x[i] * y[i])
end

z = sort(z, rev = true)

Spositive = Float32(0)
Snegative = Float32(0)
for i = 1:5
	if z[i] > Float32(0)
		Spositive += z[i]
	else
		Snegative += z[i]
	end
end

S = Float32(Spositive + Snegative)

difference = Float32(abs(S - exact))
println(S, " roznica: ", difference)

#d
z = [Float32(0), Float32(0), Float32(0), Float32(0), Float32(0)]
S = Float32(0)
for i = 1:5
	z[i] = Float32(x[i] * y[i])
end

z = sort(z)

Spositive = Float32(0)
Snegative = Float32(0)
for i = 1:5
	if z[i] > Float32(0)
		Spositive += z[i]
	else
		Snegative += z[i]
	end
end

S = Float32(Spositive + Snegative)

difference = Float32(abs(S - exact))
println(S, " roznica: ", difference)


exact = Float64(-1.00657107e-10)
x = [Float64(2.718281828), Float64(-3.141592654), Float64(1.414213562), Float64(0.577215664), Float64(0.301029995)]
y = [Float64(1486.2497), Float64(878366.9879), Float64(-22.37492), Float64(4773714.647), Float64(0.000185048)]

println("Float64")
#a
S = Float64(0)
for i = 1:5
	S += Float64(x[i] * y[i])
end

difference = Float64(abs(S - exact))
println(S, " roznica: ", difference)

#b
S = Float64(0)
for i = 5:-1:1
	S += Float64(x[i] * y[i])
end

difference = Float64(abs(S - exact))
println(S, " roznica: ", difference)

#c
z = [Float64(0), Float64(0), Float64(0), Float64(0), Float64(0)]
S = Float64(0)
for i = 1:5
	z[i] = Float32(x[i] * y[i])
end

z = sort(z, rev = true)

Spositive = Float64(0)
Snegative = Float64(0)
for i = 1:5
	if z[i] > Float64(0)
		Spositive += z[i]
	else
		Snegative += z[i]
	end
end

S = Float64(Spositive + Snegative)

difference = Float64(abs(S - exact))
println(S, " roznica: ", difference)

#d
z = [Float64(0), Float64(0), Float64(0), Float64(0), Float64(0)]
S = Float64(0)
for i = 1:5
	z[i] = Float64(x[i] * y[i])
end

z = sort(z)

Spositive = Float64(0)
Snegative = Float64(0)
for i = 1:5
	if z[i] > Float64(0)
		Spositive += z[i]
	else
		Snegative += z[i]
	end
end

S = Float64(Spositive + Snegative)

difference = Float64(abs(S - exact))
println(S, " roznica: ", difference)
