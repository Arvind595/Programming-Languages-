# -*- coding: utf-8 -*-
"""
Created on Thu Mar 26 11:32:32 2020

@author: Aravind Anirudh
"""



output="India case 665 today 8 death 13 recov 43 critical 0 update 03/26 13:50"
print(output)

x = output.rsplit(" ")
print(x)

cases=x[2]
print(cases)

todaycases=x[4]
print(todaycases)

deaths=x[6]
print(deaths)

recovered=x[8]
print(recovered)

dat=x[12]
dat=dat.rsplit("/")
date=dat[1]
print(date)

tim=x[13]
tim=tim.rsplit(":")
time=tim[0]

print(time)


payload='c'+cases+'t'+todaycases+'d'+deaths+'r'+recovered+'e'+date+'m'+time
print(payload)
# a=cases
# mylist=[]
# mylist=bin(a)
# print(mylist[4])