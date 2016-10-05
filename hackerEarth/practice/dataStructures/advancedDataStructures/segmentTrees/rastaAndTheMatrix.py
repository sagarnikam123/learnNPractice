# Rasta and The Matrix

#######################################################################################################################
#
#   Rasta loves matrices. He has a 10^18 × 10^18 matrix. Every cell has a color, initially white.
#   Rasta also loves queries. He asks you to perform q queries. We have queries of two types:
#   1 x l r: if x = 0, then it means that you should change the color of all cells in rows l, l+1, ..., r
#   (white to black and black to white). Otherwise (x = 1) you should do this to columns number l, l+1, ... r.
#   2 l r x y: You should print the number of black cells in subrectangle of this matrix, consisting of rows number
#   l, l+1, ..., r and columns number x, x+1, ..., y.
#
#   Input
#   The first line of input contains one number, n (1 ≤ n ≤ 10^5).
#   The next n lines each line contains one query.
#
#   Output
#   For each query of type 2 print the answer modulo 10^9 + 7 in one line.
#
#   Note
#   For each query, consider LastAns is the answer to the last 2nd type query before it , modulo 109 + 7
#   (if there is no such query, it is equal to 0).
#   For each 1st type query you should do:
#   l = l ⊕ LastAns
#   r = r ⊕ LastAns
#   (before performing this query)
#   After That : x = 0 or 1 and 1 ≤ l ≤ r ≤ 10^18
#
#   And for each 2nd type:
#   l = l ⊕ LastAns
#   r = r ⊕ LastAns
#   x = x ⊕ LastAns
#   y = y ⊕ LastAns
#   (before performing this query)
#   After That : 1 ≤ l ≤ r ≤ 1018 and 1 ≤ x ≤ y ≤ 10^18
#   (⊕ is XOR)
#
#   SAMPLE INPUT
#   5
#   2 1 7 5 8
#   1 0 2 12
#   1 1 4 14
#   2 8 19 12 15
#   1 0 8 8
#
#   SAMPLE OUTPUT
#   0
#   26
#
#######################################################################################################################
