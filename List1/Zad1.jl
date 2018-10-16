#Oskar Makowski 236554

#Czesc 1 zadania
println("Czesc 1 - macheps")

macheps16 = Float16(1)

while Float16(1) + Float16(macheps16 / 2) > Float16(1)
	macheps16 /= Float16(2)
end

println("Float16: ", macheps16, ", eps(Float16): ", eps(Float16))

macheps32 = Float32(1)

while Float32(1) + Float32(macheps32 / 2) > Float32(1)
	macheps32 /= Float32(2)
end

println("Float32: ", macheps32, ", eps(Float32): ", eps(Float32))

macheps64 = Float64(1)

while Float64(1) + Float64(macheps64 / 2) > Float64(1)
	macheps64 /= Float64(2)
end

println("Float64: ", macheps64, ", eps(Float64): ", eps(Float64))

#Czesc 2 zadania
println("Czesc 2 - eta")

eta16 = Float16(1)

while Float16(eta16 / 2) > Float16(0)
	eta16 /= Float16(2)
end

println("Float16: ", eta16, ", nextfloat(Float16(0): ", nextfloat(Float16(0)))

eta32 = Float32(1)

while Float32(eta32 / 2) > Float32(0)
	eta32 /= Float32(2)
end

println("Float32: ", eta32, ", nextfloat(Float32(0): ", nextfloat(Float32(0)))

eta64 = Float64(1)

while Float64(eta64 / 2) > Float64(0)
	eta64 /= Float64(2)
end

println("Float64: ", eta64, ", nextfloat(Float64(0): ", nextfloat(Float64(0)))

#Czesc 3 zadania
println("Czesc 3 - MAX")

max16 = Float16(1)

while isinf(Float16(max16 * 2)) == false
		max16 *= Float16(2)
end

tmp16 = Float16(max16 / 2)

while isinf(Float16(max16 + tmp16)) == false
	max16 += tmp16
	tmp16 /= Float16(2)
end

println("Float16: ", Float16(max16), ", realmax(FLoat16): ", realmax(Float16))

max32 = Float32(1)

while isinf(Float32(max32 * 2)) == false
	max32 *= Float32(2)
end

tmp32 = Float32(max32 / 2)

while isinf(Float32(max32 + tmp32)) == false
	max32 += tmp32
	tmp32 /= Float32(2)
end

println("Float32: ", max32, ", realmax(Float32): ", realmax(Float32))

max64 = Float64(1)

while isinf(Float64(max64 * 2)) == false
	max64 *= Float64(2)
end

tmp64 = Float64(max64 / 2)

while isinf(Float64(max64 + tmp64)) == false
	max64 += tmp64
	tmp64 /= Float64(2)
end

println("Float64: ", max64, ", realmax(Float64): ", realmax(Float64))
