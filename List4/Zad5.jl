#Oskar Makowski 236554

push!(LOAD_PATH, "/home/oskar/Desktop")
using Metody
using Plots

f(x) = e^x

rysujNnfx(f, 0.0, 1.0, 5)
rysujNnfx(f, 0.0, 1.0, 10)
rysujNnfx(f, 0.0, 1.0, 15)

g(x) = x^2 * sin(x)

rysujNnfx(g, -1.0, 1.0, 5)
rysujNnfx(g, -1.0, 1.0, 10)
rysujNnfx(g, -1.0, 1.0, 15)
