#Oskar Makowski 236554

using Plots
gr()
f(x) = (exp(x))*log(1+exp(-x))
p1 = plot(f, -100, 100)
p2 = plot(f, 0, 50)
p3 = plot(f, 35, 35.5)
p = plot(p1, p2, p3, layout=(3,1), legend=false)
savefig(p, "PlotsGR.png")

using PyPlot
pyplot()
pp1 = plot(f, -100, 100)
pp2 = plot(f, 0, 50)
pp3 = plot(f, 35, 35.5)
pp = plot(pp1, pp2, pp3, layout=(3,1), legend=false)
savefig(pp, "PlotsPyPlot.png")
