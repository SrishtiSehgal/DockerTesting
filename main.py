import os
import pandas as pd
import numpy as np

def func(A):
    ADDER = np.random.rand(300,200)
    return ADDER+A*2

if __name__ == "__main__":
    print(os.listdir())
    in_path = os.path.join(os.getcwd(), 'input', 'INPUT.csv') # https://stackoverflow.com/questions/2953834/windows-path-in-python
    out_path = os.path.join(os.getcwd(), 'output', 'OUTPUT.csv')
    # INPUT = np.loadtxt(in_path, delimiter=',', comments='')
    # print ("File exists:"+str(path.exists(in_path)))
    INPUT = pd.read_csv(in_path, sep=',', header=None)
    OUTPUT = func(INPUT)
    OUTPUT.to_csv(out_path, sep=',', header=None, index=False)
    # np.savetxt(out_path, OUTPUT, delimiter=',', comments='')
