using LinearAlgebra
#### exercise_03
# Create a 2x4 two dimensional matrix with random floats in it and in the next
# step determine the biggest element.
x = rand(Float64, (2, 4))
println(maximum(x))
