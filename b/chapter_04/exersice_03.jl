using LinearAlgebra
#### exercise_03
# Create a 2x4 two dimensional matrix with random floats in it and in the next
# step determine the biggest element.
x = rand(Float64, (2, 4))
println(x)
println(maximum(x))

#### exercise_04

# 1. Create two matrices of the same layout and test if addition and subtraction
#    of the matrix works as expected: C = A + B
a = [2 2 ; 2 2]
b = [2 1 ; 1 1]

println("\n matrix addition works")
println(a + b)

println("\n matrix subtraction works")
println(a - b)

# 2. Now compare matrix multiplication either this way A * B and
#    this way A .* B. Whats the difference?!
println("\n A  * B (matrix multiplication)")
println(a * b)

println("\n A .* B (dot syntax for vectorized function; Ai * Bi)")
println(a .* b)


c = a * b
println("\n\n Right division operator")
println( "(c / b) == (c * inv(b)) => ", c / b == c * inv(b))

println("\n\n Lef division operator")
println( "(b \\ c) == (inv(b) * c) => ", b \ c == inv(b) * c)


#println("\n\n")
#println(b \ c)

A = [2 4; 2 3;2 3];
B = [32; -4; 7];

X = A \B
X = B / A

#inv(A)

#println("\n\n")
#println(X)
