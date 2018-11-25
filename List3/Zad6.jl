#Oskar Makowski 236554

push!(LOAD_PATH, "/home/oskar/Desktop")
using Metody
using Plots
gr()

f1(x) = e ^ (1 - x) - 1
f2(x) = x * e ^ (-x)

pf1(x) = -e ^ (1 - x)
pf2(x) = (x - 1) * -e ^ -x

g(x) = 0

p1 = plot(f1, -1, 8, legend = false)
p1 = plot!(g)
p2 = plot(f2, -1, 8, legend = false)
p2 = plot!(g)
p = plot(p1, p2, layout=(2, 1))
savefig(p, "PlotZad6.png")

#f1
println("Metoda bisekcji dla f1")
println(mbisekcji(f1, 0.0, 3.0, 1e-5, 1e-5))
println(mbisekcji(f1, -10.0, 10.0, 1e-5, 1e-5))

#f2
println("Metoda bisekcji dla f2")
println(mbisekcji(f2, -1.0, 2.0, 1e-5, 1e-5))
println(mbisekcji(f2, -10.0, 20.0, 1e-5, 1e-5))

#f1
println("Metoda stycznych dla f1")
println(mstycznych(f1, pf1, 0.0, 1e-5, 1e-5, 100))
println(mstycznych(f1, pf1, 3.0, 1e-5, 1e-5, 100))
println(mstycznych(f1, pf1, 7.0, 1e-5, 1e-5, 1000))
println(mstycznych(f1, pf1, 20.0, 1e-5, 1e-5, 1000))

#f2
println("Metoda stycznych dla f2")
println(mstycznych(f2, pf2, 0.5, 1e-5, 1e-5, 100))
println(mstycznych(f2, pf2, -1.0, 1e-5, 1e-5, 100))
println(mstycznych(f2, pf2, 2.0, 1e-5, 1e-5, 100))
println(mstycznych(f2, pf2, 1.0, 1e-5, 1e-5, 100))

#f1
println("Metoda siecznych dla f1")
println(msiecznych(f1, 0.0, 2.0, 1e-5, 1e-5, 100))
println(msiecznych(f1, -10.0, 10.0, 1e-5, 1e-5, 100))

#f2
println("Metoda siecznych dla f2")
println(msiecznych(f2, -1.0, 1.0, 1e-5, 1e-5, 100))
println(msiecznych(f2, -4.0, 4.0, 1e-5, 1e-5, 100))

