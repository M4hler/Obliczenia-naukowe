#Oskar Makowski 236554

a = Array{Float64}(41)
a[1] = 1
c1 = -2

b = Array{Float64}(41)
b[1] = 2
c2 = -2

c = Array{Float64}(41)
c[1] = 1.99999999999999
c3 = -2

d = Array{Float64}(41)
d[1] = 1
c4 = -1

f = Array{Float64}(41)
f[1] = -1
c5 = -1

g = Array{Float64}(41)
g[1] = 0.75
c6 = -1

h = Array{Float64}(41)
h[1] = 0.25
c7 = -1

println("1 ", a[1], " ", b[1], " ", c[1], " ", d[1], " ", f[1], " ", g[1], " ", h[1])
for i = 2:41
	a[i] = a[i - 1] ^ 2 + c1
	b[i] = b[i - 1] ^ 2 + c2
	c[i] = c[i - 1] ^ 2 + c3
	d[i] = d[i - 1] ^ 2 + c4
	f[i] = f[i - 1] ^ 2 + c5
	g[i] = g[i - 1] ^ 2 + c6
	h[i] = h[i - 1] ^ 2 + c7
	println(i, " ", a[i], " ", b[i], " ", c[i], " ", d[i], " ", f[i], " ", g[i], " ", h[i])
end

using Plots
gr()
p1 = plot(a, marker=:circle)
p2 = plot(b, marker=:circle)
p3 = plot(c, marker=:circle)
p4 = plot(d, marker=:circle)
p5 = plot(f, marker=:circle)
p6 = plot(g, marker=:circle)
p7 = plot(h, marker=:circle)
savefig(p1, "Plot1.png")
savefig(p2, "Plot2.png")
savefig(p3, "Plot3.png")
savefig(p4, "Plot4.png")
savefig(p5, "Plot5.png")
savefig(p6, "Plot6.png")
savefig(p7, "Plot7.png")

