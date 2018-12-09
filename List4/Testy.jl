#Oskar Makowski 236554

push!(LOAD_PATH, "/home/oskar/Desktop")
using Metody
using Plots

#Zad1
println("Zadanie 1")

x = Float64[3, 1, 5, 6]
f = Float64[1, -3, 2, 4]

println("x = ", x)
println("f = ", f)

fx = ilorazyRoznicowe(x, f)
println("fx = ", fx)

#Zad2
println("Zadanie 2")

a = 3.0
t = warNewton(x, fx, a)
println("t = ", a, " w(t) = ", t)

a = 1.0
t = warNewton(x, fx, a)
println("t = ", a, " w(t) = ", t)

a = 5.0
t = warNewton(x, fx, a)
println("t = ", a, " w(t) = ", t)

a = 6.0
t = warNewton(x, fx, a)
println("t = ", a, " w(t) = ", t)

#Zad3
println("Zadanie 3")

x = Float64[3, 4, 5, 1]
fx = Float64[2, 2, 7, 2]

println("x = ", x)
println("fx = ", fx)

res = naturalna(x, fx)
println("Naturalna = ", res)


#Zad4
g(x) = x^2
rysujNnfx(g, -4.0, 4.0, 10)
