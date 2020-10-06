import numpy as np

def func(A):
    ADDER = np.random.rand(300,200)
    return ADDER+A*2

if __name__ == "__main__":
    # INPUT = np.random.rand(300,200)
    # np.savetxt("INPUT.csv", INPUT, delimiter=',', comments='')
    # quit()
    INPUT = np.loadtxt("./input/INPUT.csv", delimiter=',', comments='')
    OUTPUT = func(INPUT)
    np.savetxt("./output/OUTPUT.csv", OUTPUT, delimiter=',', comments='')
