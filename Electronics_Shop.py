"""
Electronics Shop

A person wants to determine the most expensive computer keyboard and USB drive that can be purchased with a give budget.
Given price lists for keyboards and USB drives and a budget, find the cost to buy them. If it is not possible to buy both items, return -1.

Example
 b = 60
 keyboards = [40, 50, 60]
 drives = [5, 8, 12]
 The person can buy a 40 keyboard + 12 USB drive = 52, or a 50 keyboard + 8 USB drive = 58.
 Choose the latter as the more expensive option and return 58.

Function Description
 Complete the getMoneySpent function in the editor below.
 getMoneySpent has the following parameter(s):
 - int keyboards[n]: the keyboard prices
 - int drives[n]: the drive prices
 - int b: the budget

Return
 - int: the maximum that can be spent, or -1 if it is not possible to buy both items

Input Format
 The first line contains there space-separated integers b, n, and m, the budget, the number of keyboard models and the number of USB drive models.
 The second line contains n space-separated integers keyboard[i], the price of each keyboard model.
 The third line contains m space-separated integers drives, the prices of the USB drives.

Constraints
 - 1 <= n,m <= 1000
 - 1 <= b <= 10**6
 - The price of each item is in the inclusive range [1, 10**6].
"""

import os
import sys

#
# Complete the getMoneySpent function below.
#
# def getMoneySpent(keyboards, drives, b):
    #
    # Write your code here.
    #

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    bnm = input().split()

    b = int(bnm[0])

    n = int(bnm[1])

    m = int(bnm[2])

    keyboards = list(map(int, input().rstrip().split()))

    drives = list(map(int, input().rstrip().split()))

    #
    # The maximum amount of money she can spend on a keyboard and USB drive, or -1 if she can't purchase both items
    #

    moneySpent = getMoneySpent(keyboards, drives, b)

    fptr.write(str(moneySpent) + '\n')

    fptr.close()