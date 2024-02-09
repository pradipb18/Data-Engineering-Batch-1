import numpy as np

# 50 values between 1 and 10:
print(np.linspace(1, 10))

# 7 values between 1 and 10:
print(np.linspace(1, 10, 7))

# excluding the endpoint:
print(np.linspace(1, 10, 7, endpoint=False))

samples, spacing = np.linspace(1, 10, retstep=True)
print(samples)
print(spacing)

samples, spacing = np.linspace(1, 10, 20, endpoint=True, retstep=True)
print(samples)
print(spacing)

samples, spacing = np.linspace(1, 10, 20, endpoint=False, retstep=True)
print(samples)
print(spacing)