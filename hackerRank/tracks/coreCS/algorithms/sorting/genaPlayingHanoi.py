# Gena Playing Hanoi

#######################################################################################################################

The Tower of Hanoi is a famous game consisting of 3 rods and a number of discs of incrementally different diameters. The puzzle starts with the discs neatly stacked on one rod, ordered by ascending size with the smallest disc at the top. The game's objective is to move the entire stack to another rod, obeying the following rules:
    Only one disc can be moved at a time.
    Each move consists of taking the topmost disc from a stack and moving it to the top of another stack.
    No disc may be placed on top of a smaller disc.
Gena has a modified version of the Tower of Hanoi. His Hanoi has 4 rods and N discs ordered by ascending size. He made a few moves (following the rules above), but stopped and lost his place. He wants to restore the tower to its original state by making valid moves. Given the state of Gena's Hanoi, help him calculate the minimum number of moves needed to restore the tower to its original state.
Note: Gena's rods are numbered from 1 to 4. All discs are initially located on rod 1.

Input Format
The first line contains a single integer, N, denoting the number of discs.
The second line contains N space-separated integers, where the ith integer is the index of the rod where the disk with diameter i is located.

Constraints
1 <= N <= 10

Output Format
Print the minimum number of moves Gena must make to restore the tower to its initial, ordered state on the first rod.

Sample Input
3
1 4 1

Sample Output
3

Explanation
3 moves are enough to build the tower. Here is one possible solution:
[gena1.png]
[gena2.png]

#######################################################################################################################

#!/bin/python3

import sys

N = int(input().strip())
a = [int(a_temp) for a_temp in input().strip().split(' ')]
