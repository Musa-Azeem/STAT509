SizeOfS = factorial(10)

SizeOfA = 9

for (i in 1:9) {
    # calculate x
    x = 0
    for (j in (10-(i-1)):10) {
        x = x + j
    }

    SizeOfA = SizeOfA * (((10-i)*i/x + (10-i-1)*(x-1)/x))
}

P_A = SizeOfA/SizeOfS

print(P_A)


# Simulation
N = 10000            # loop 1000 times
occur_i = 0          # Number of times the correct sample is given

for (i in 1:N) {
    match = FALSE
    samples = sample(1:10, 10)
    for (i in samples) {
        if (samples[i] == i) {
            match = TRUE
        }
    }
    if (match) {
        occur_i = occur_i + 1
    }
}

occur = N - occur_i
P_A = occur/N
print(P_A)