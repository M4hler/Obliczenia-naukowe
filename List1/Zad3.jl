#Oskar Makowski 236554

k = Float64(0)
a = Float64(1) 
while Float64(a) != Float64(a + 2.0^-k)
	k += Float64(1)
end

println(k - 1)

k = Float64(0)
a = Float64(2)
while Float64(a) != Float64(a + 2.0^-k)
	k += Float64(1)
end

println(k - 1)

k = Float64(0)
a = Float64(0.5)
while Float64(a) != Float64(a + 2.0^-k)
	k += Float64(1)
end

println(k - 1)
