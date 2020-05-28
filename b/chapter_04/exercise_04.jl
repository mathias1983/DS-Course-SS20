using LinearAlgebra


# ### 1. Create two matrices of the same layout and test if addition and subtraction
#        of the matrix works as expected: C = A + B
a = [2 2 2 2; 2 2 2 2]
b = [1 1 3 3; 1 1 3 3]
println("\n matrix addition")
println(a + b) # works

println("\n matrix subtraction works")
println(a - b) # works



# ### 2. Now compare matrix multiplication either this way A * B and
#        this way A .* B. Whats the difference?!
a = [1 1; 2 2]
b = [1 2; 1 3]
println("\n A  * B (matrix multiplication)")
println(a * b)

println("\n A .* B (dot syntax for vectorized function; element-wise operation Ai * Bi)")
println(a .* b)



# ### 3. What about matrix division with "/" or "\"?!
c = a * b
println("\n\n Right division operator")
println( "(c / b) == (c * inv(b)) => ",  c / b == c * inv(b)) # evaluates to true

println("\n\n Lef division operator")
println( "(b \\ c) == (inv(b) * c) => ", b \ c == inv(b) * c) # evaluates to true

A = [2 4; 2 3;2 3];
B = [32; -4; 7];
# the following works even though A has rectangular shape and dimensions don't
# fit. Division is possible by using a polyalgorithm (some math tricks).
# https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/#Base.:\\-Tuple{AbstractArray{T,2}%20where%20T,Union{AbstractArray{T,1},%20AbstractArray{T,2}}%20where%20T}
X = A \ B

# this won't work; no fancy polyalgorithm; DimensionMissmatch is thrown
# X = B / A



# ### 4. Create a 3x3 integer matrix A with useful numbers.
#        Now try A+1, A-1, A*2, A/2.
A = [2 2 2; 4 4 4; 6 6 6];

# In Julia operators are functions. For multiplication and division
# element-wise operation with a number is defined for "*" and "/".
# But not for "+" and "-".
#println("A+1", A+1); # MethodError; A.+1 would work
#println("A-1", A-1); # MethodError; A.-1 would work
println("A*2", A*2); # works element-wise (like .*)
println("A/2", A/2); # works element-wise (like ./)



# ### 5. Now multiply a 3x4 matrix with a suitable (4)vector.
M = rand(Int8, (3, 4))
V = rand(Int8, (4, 1))

println("M * V", M * V)
