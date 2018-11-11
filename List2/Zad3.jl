#Oskar Makowski 236554

function hilb(n::Int)
# Function generates the Hilbert matrix  A of size n,
#  A (i, j) = 1 / (i + j - 1)
# Inputs:
#	n: size of matrix A, n>=1
#
#
# Usage: hilb (10)
#
# Pawel Zielinski
        if n < 1
         error("size n should be >= 1")
        end
        return [1 / (i + j - 1) for i in 1:n, j in 1:n]
end

function matcond(n::Int, c::Float64)
# Function generates a random square matrix A of size n with
# a given condition number c.
# Inputs:
#	n: size of matrix A, n>1
#	c: condition of matrix A, c>= 1.0
#
# Usage: matcond (10, 100.0);
#
# Pawel Zielinski
        if n < 2
         error("size n should be > 1")
        end
        if c< 1.0
         error("condition number  c of a matrix  should be >= 1.0")
        end
        (U,S,V)=svd(rand(n,n))
        return U*diagm(linspace(1.0,c,n))*V'
end

#a
for i = 1:10
	A = hilb(i)
	x = ones(i)
	b = A * x

	x1 = A \ b
	println("Gauss elimination")
	print(cond(A), " [ ")
	for j = 1:i
		show(IOContext(STDOUT, :compact=>false), "text/plain", x1[j])
		print(" ")
	end
	println("] ", norm(x - x1)) #p-norm

	x2 = inv(A) * b
	println("Matrix inversion")
	print(cond(A), " [ ")
	for j = 1:i
		show(IOContext(STDOUT, :compact=>false), "text/plain", x2[j])
		print(" ")
	end
	println("] ", norm(x - x2))
end

#b
n = [5, 10, 20]
c = [Float64(1), Float64(10), Float64(10^3), Float64(10^7), Float64(10^12), Float64(10^16)]

println("")
for i in n
	println(i)
	for j in c
		A = matcond(i, j)
		x = ones(i)
		b = A * x

		x1 = A \ b
		println("Gauss elimination")
		print(cond(A), " [ ")
		for j = 1:i
			show(IOContext(STDOUT, :compact=>false), "text/plain", x1[j])
			print(" ")
		end
		println("] ", norm(x - x1))

		x2 = inv(A) * b
		println("Matrix inversion")
		print(cond(A), " [ ")
		for j = 1:i
			show(IOContext(STDOUT, :compact=>false), "text/plain", x2[j])
			print(" ")
		end
		println("] ", norm(x - x2))
	end	
end








