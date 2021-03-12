# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""

# import matplotlib.pyplot as plt
# import numpy as np

# x, y = np.loadtxt('test1.txt', delimiter=',', unpack=True)
# plt.plot(x,y, label='Loaded from file!')

# plt.xlabel('x')
# plt.ylabel('y')
# plt.title('Interesting Graph\nCheck it out')
# plt.legend()
# plt.show()

output="India case 665 today 8 death 13 recov 43 critical 0 update 03/26 13:50"
print(output)

x = output.rsplit(" ")
print(x)

cases=x[2]
cases=int(cases)
print(cases)

todaycases=x[4]
todaycases=int(todaycases)
print(todaycases)

deaths=x[6]
deaths=int(deaths)
print(deaths)

recovered=x[8]
recovered=int(recovered)
print(recovered)

dat=x[12]
dat=dat.rsplit("/")
date=dat[1]
date=int(date)
print(date)

tim=x[13]
tim=tim.rsplit(":")
time=tim[0]
time=int(time)
print(time)

a=time
mylist=[]
mylist=bin(a)
print(bin(a))