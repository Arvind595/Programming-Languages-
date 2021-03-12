# -*- coding: utf-8 -*-
"""
Created on Wed May 20 10:08:04 2020

@author: Aravind Anirudh
"""

'''To write a Python function squareprime(l) that takes a nonempty list of integers and returns True 
if the elements of l alternate between perfect squares and prime numbers, and returns False otherwise.'''

#generates square number in a list
def squaretest(num):
    sqlist=[]
    i=1
    while i**2 <= num:
        sqlist.append(i**2)
        i+=1
    return sqlist

#generates primenumbers in a list
def primecheck(num):
    primelist=[]
    for i in range(2,num + 1):
        for p in range(2,i):
            if (i % p) == 0:
                break
        else:
            primelist.append(i)
    return primelist

#checks the sequence
def primesquare(l):
    if len(l)==1:
        primelist = primecheck(l[0])
        sqlist = squaretest(l[0])
        return (l[0] in primelist) or (l[0] in sqlist)
    else:
        ol=[]
        el=[]
        for i in range(0,len(l),2):
            ol.append(l[i])
        for p in range (1, len(l),2):
            el.append(l[p])
        primelist = primecheck(max(l))
        sqlist = squaretest (max(l))
        
        check =((all(x in primelist for x in el)) == True and (all(y in sqlist
for y in ol)) == True) or ((all(x in primelist for x in ol)) == True and (all(y
in sqlist for y in el)) == True)
                                                                              
        return check

print(primesquare([4])) 
print(primesquare([4,5,16,101,64])) 
print(primesquare([5,16,101,36,27]))
print(primesquare([1,4,7]))
print(primesquare([1,5,16,17,25]))
print(primesquare([4,5,16,101]))

print(primesquare([8,5,16,101]))