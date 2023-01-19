# Simulation
N = 100000           # loop 1000 times
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
cat(P_A*100, "%")
# Output is about 37%