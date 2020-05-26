import numpy as np

print("Hello World")

arr = np.array([1., 0., 0.])
print("np.array([1., 0., 0.]) : " + str(arr.ndim))

arr = np.array([[1., 0., 0.],
                [2., 0., 1.]])
print("np.array([[1., 0., 0.],[2., 0., 1.]]) : " + str(arr.ndim))
print("arr.shape : " + str(arr.shape))
print("arr.size : " + str(arr.size))



