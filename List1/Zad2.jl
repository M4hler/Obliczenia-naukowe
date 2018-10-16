#Oskar Makowski 236554

macheps = Float16(3) * (Float16(4) / Float16(3) - Float16(1)) - Float16(1)
println(macheps, " ", eps(Float16))

macheps = Float32(3) * (Float32(4) / Float32(3) - Float32(1)) - Float32(1)
println(macheps, " ", eps(Float32))

macheps = Float64(3) * (Float64(4) / Float64(3) - Float64(1)) - Float64(1)
println(macheps, " ", eps(Float64))
