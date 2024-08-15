"""
Sock Merchant - Sales by Match
    There is a large pile of socks that must be paired by color.
    Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.

Example
    n = 7
    ar = [1, 2, 1, 2, 1, 3, 2]
    There is one pair of color 1 and one of color 2. There are three odd socks left, one of each color. The number of pairs is 2.

Function Description
    Complete the sockMerchant function in the editor below.
    sockMerchant has the following parameter(s):
     - int n: the number of socks in the pile
     - int ar[n]: the colors of each sock

Return
     - int: the number of pairs

Input Format
    The first line contains an integer n, the number of socks represented in ar.
    The second lint contains n space-separated integers, ar[i], the colors of the socks in the pile.

Contraints
     - 1 <= n <= 100
     - 1 <= ar[i] <= 100 where 0 <= i < n
"""

# Answer
def sockMerchant(n, ar):
    ar.sort()
    index = 0
    pair = 0
    while index < n - 1:
        if ar[index] == ar[index + 1]:
            pair += 1
            index += 2
        else:
            index += 1
    return pair

"""
Test case 0
    sample input: 9
                  10 20 20 10 10 30 50 10 20
    
    sample output: 3
"""
t0 = [9, [10, 20, 20, 10, 10, 30, 50, 10, 20]]
print(sockMerchant(t0[0], t0[1]))

"""
Test case 1
    sample input: 10
                  1 1 3 1 2 1 3 3 3 3

    sample output: 4
"""
t1 = [10, [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]]
print(sockMerchant(t1[0], t1[1]))