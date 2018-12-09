#Oskar Makowski 236554

push!(LOAD_PATH, "/home/oskar/Desktop")
using Metody
using Plots

function rysujNnfx(f, a::Float64, b::Float64, n::Int)
	h = (b - a) / n

	x = zeros(n + 1)
	y = zeros(n + 1)

	for i = 0 : n
		x[i + 1] = a + i * h
		y[i + 1] = f(x[i + 1])
	end

	fx = ilorazyRoznicowe(x, y)
	interpolation = zeros(n + 1)

	for i = 1 : n + 1
		interpolation[i] = warNewton(x, fx, x[i])
	end

	p = plot(x, interpolation)
	p = plot!(f, legend = false)
	savefig(p, "PlotInerpolation$n.png")
end

#f(x) = x^2

#rysujNnfx(f, -4.0, 4.0, 10)
