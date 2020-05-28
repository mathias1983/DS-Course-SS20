using LinearAlgebra
#### exercise_03
# Create a 2x4 two dimensional matrix with random floats in it and in the next
# step determine the biggest element.
x = rand(Float64, (2, 4))
println(maximum(x))

#### exercise_04

# 1. Create two matrices of the same layout and test if addition and subtraction
#    of the matrix works as expected: C = A + B
a = [2 2 2 2; 2 2 2 2]
b = [1 1 3 3; 1 1 3 3]
println("\n matrix addition")
println(a + b) # works

println("\n matrix subtraction works")
println(a - b) # works

# 2. Now compare matrix multiplication either this way A * B and
#    this way A .* B. Whats the difference?!
a = [1 1; 2 2]
b = [1 2; 1 3]
println("\n A  * B (matrix multiplication)")
println(a * b)

println("\n A .* B (dot syntax for vectorized function; Ai * Bi)")
println(a .* b)


c = a * b
println("\n\n Right division operator")
println( "(c / b) == (c * inv(b)) => ",  c / b == c * inv(b)) # true

println("\n\n Lef division operator")
println( "(b \\ c) == (inv(b) * c) => ", b \ c == inv(b) * c) # true



A = [2 4; 2 3;2 3];
B = [32; -4; 7];

# the following works even though A has rectangular shape and dimensions don't
# fit. Division is possible by using a polyalgorithm.
# https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/#Base.:\\-Tuple{AbstractArray{T,2}%20where%20T,Union{AbstractArray{T,1},%20AbstractArray{T,2}}%20where%20T}
X = A \ B

# this won't work since A is not invertable
#X = B / A

# this won't work since A is not invertable
#inv(A)

#println("\n\n")
#println(X)
