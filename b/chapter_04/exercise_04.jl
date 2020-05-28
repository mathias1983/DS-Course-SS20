using LinearAlgebra


# ### 1. Create two matrices of the same layout and test if addition and subtraction
#        of the matrix works as expected: C = A + B
A = [2 2 2 2; 2 2 2 2]
B = [1 1 3 3; 1 1 3 3]
println("\n matrix addition")
println(A + B) # works

println("\n matrix subtraction works")
println(A - B) # works



# ### 2. Now compare matrix multiplication either this way A * B and
#        this way A .* B. Whats the difference?!
A = [1 1; 2 2]
B = [1 2; 1 3]
println("\n A  * B (matrix multiplication)")
println(A * B)

println("\n A .* B (dot syntax for vectorized function; element-wise operation Ai * Bi)")
println(A .* B)



# ### 3. What about matrix division with "/" or "\"?!
C = A * B
println("\n\n Right division operator")
println( "(C / B) == (C * inv(B)) => ",  C / B == C * inv(B)) # evaluates to true

println("\n\n Left division operator")
println( "(B \\ C) == (inv(B) * C) => ", B \ C == inv(B) * C) # evaluates to true

A = [2 4; 2 3;2 3];
B = [32; -4; 7];
# The following works even though A has rectangular shape and dimensions don't
# fit. Division is possible because the backslash operator is using
# a polyalgorithm that does some math tricks behind the scenes to make it work.
# https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/#Base.:\\-Tuple{AbstractArray{T,2}%20where%20T,Union{AbstractArray{T,1},%20AbstractArray{T,2}}%20where%20T}
X = A \ B

# this won't work; no fancy polyalgorithm; DimensionMissmatch is thrown
X = B / A



# ### 4. Create a 3x3 integer matrix A with useful numbers.
#        Now try A+1, A-1, A*2, A/2.
A = [2 2 2; 4 4 4; 6 6 6];

# In Julia operators are functions. For multiplication and division
# element-wise operation with a number as in this case is defined for "*" and "/".
# But not for "+" and "-".
println("A+1", A+1); # MethodError; A.+1 would work
println("A-1", A-1); # MethodError; A.-1 would work
println("A*2", A*2); # works element-wise (like .*)
println("A/2", A/2); # works element-wise (like ./)



# ### 5. Now multiply a 3x4 matrix with a suitable (4)vector.
M = rand(Int8, (3, 4))
V = rand(Int8, (4, 1))

println("M * V", M * V)
