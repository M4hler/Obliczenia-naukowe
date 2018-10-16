#Oskar Makowski 236554

x = Float64(1)

while x * Float64(1 / x) == Float64(1)
	x = nextfloat(Float64(x))
end

println(x)

x = realmin(Float64)

while x * Float64(1 / x) == Float64(1)
	x = nextfloat(Float64(x))
end

println(x)
