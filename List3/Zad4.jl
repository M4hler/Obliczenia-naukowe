#Oskar Makowski 236554

push!(LOAD_PATH, "/home/oskar/Desktop")
using Metody

f(x) = sin(x) - (0.5 * x)^2
pf(x) = cos(x) - x

println("Metoda bisekcji")
println(mbisekcji(f, 1.5, 2.0, 0.5e-5, 0.5e-5))

println("Metoda Newtona")
println(mstycznych(f, pf, 1.5, 0.5e-5, 0.5e-5, 100))

println("Metoda siecznych")
println(msiecznych(f, 1.0, 2.0, 0.5e-5, 0.5e-5, 100))
