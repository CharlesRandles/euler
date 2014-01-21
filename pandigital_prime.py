#!/usr/bin/python

import math
import sys

def anagrams(word):
    if len(word)==1:
        return [word]
    result=[]
    for i in range(len(word)):
        letter=word[i]
        rest=word[0:i] + word[i+1:]
        for tail in anagrams(rest):
            result.append(letter + tail)
    return result

def has_factor(n):
    for i in range(3, int(math.sqrt(n)), 2):
        if n % i==0:
            return True
    return False

pandigitals = anagrams("012345679")
print "Made anagrams"
pandigitals = map(int, pandigitals)
print "Numerified"
pandigitals = filter(lambda x: x % 2 ==1, pandigitals)
pandigitals = filter(lambda x: x!=1 , pandigitals)
print "filtered"

pandigitals.sort()
print "sorted"
pandigitals.reverse()
print "reversed"

#pandigitals = filter(lambda x: not(has_factor(x)), pandigitals)

for p in pandigitals:
    if not has_factor(p):
        print p
        sys.exit(0)
        
#print max ([987625403, 987654103, 987653201, 987643021, 986543021, 976542103])
