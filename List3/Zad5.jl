#Oskar Makowski 236554

push!(LOAD_PATH, "/home/oskar/Desktop")
using Metody
using Plots
gr()

f(x) = 3 * x - (e^x)
g(x) = 0

p = plot(f, 0, 2, legend = false)
p = plot!(g, 0, 2, legend = false)
savefig(p, "PlotZad5.png")

println(mbisekcji(f, 0.0, 1.0, 1e-4, 1e-4))
println(mbisekcji(f, 1.0, 2.0, 1e-4, 1e-4))
