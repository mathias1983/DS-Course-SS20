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

# normal matrix multiplication
println("\n A  * B")
println(A * B)

# This will not do a matrix multiplication. Instead ".*" is the dot syntax for a vectorized function.
# Elements from both matrices will be multiplied element-wise. This can be convient because we do not
# need loops for this kind of calculation.
# https://docs.julialang.org/en/v1/manual/functions/#man-vectorized-1
println("\n A .* B")
println(A .* B)




# ### 3. What about matrix division with "/" or "\"?!
C = A * B

# Since there is no concept of dividing matrices in math both operators do an inversion
# on one of the matrices and multiply this by the other matrix.
# The slash operator performs the inversion on the right matrix.
# The backslash operator on the left one.
# However if the inversion can't be done (not a square matrix, no linear independence between columns)
# the slash operation will throw an error. For the backslash operation Julia is using
# a polyalgorithm that does some math tricks behind the scenes to make it work.
# https://docs.julialang.org/en/v1/stdlib/LinearAlgebra/#Base.:\\-Tuple{AbstractArray{T,2}%20where%20T,Union{AbstractArray{T,1},%20AbstractArray{T,2}}%20where%20T}
#
# It is interesting (and makes sense) that this behavior of dividing elements applies for numbers too.
# 1/2 yields floating-point 0.5 because 1 is multiplied by the inverse of 2
println("\n\n Right division operator")
println( "(C / B) == (C * inv(B)) => ",  C / B == C * inv(B)) # evaluates to true

println("\n\n Left division operator")
println( "(B \\ C) == (inv(B) * C) => ", B \ C == inv(B) * C) # evaluates to true

A = [2 4; 2 3;2 3];
B = [32; -4; 7];
# The following works even though A has rectangular shape and dimensions don't fit.
X = A \ B
# this won't work; no fancy polyalgorithm; DimensionMissmatch is thrown
X = B / A

# The inv() function performs just a basic inversion as well. This one will throw an error too.
# DimensionMismatch("matrix is not square: dimensions are (3, 2)")
inv(A)


# ### 4. Create a 3x3 integer matrix A with useful numbers.
#        Now try A+1, A-1, A*2, A/2.
A = [2 2 2; 4 4 4; 6 6 6];

# In Julia operators are functions. For multiplication and division
# element-wise operation as in this case with a number is defined for "*" and "/".
# But not for "+" and "-".
println("A+1", A+1); # MethodError; A.+1 would work
println("A-1", A-1); # MethodError; A.-1 would work
println("A*2", A*2); # works element-wise (like .*)
println("A/2", A/2); # works element-wise (like ./)



# ### 5. Now multiply a 3x4 matrix with a suitable (4)vector.
M = rand(Int8, (3, 4))
V = rand(Int8, (4, 1))

println("M * V", M * V)
