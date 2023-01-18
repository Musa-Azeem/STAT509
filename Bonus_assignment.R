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