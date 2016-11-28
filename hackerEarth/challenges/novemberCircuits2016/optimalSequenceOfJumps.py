# Optimal sequence of jumps

#######################################################################################################################
#
#   For a given matrix A of size N×N, filled with integers, and three integers K,L and R, the goal is to find a
#   sequence of its cells A(i1,j1),A(i2,j2),…,A(iM,jM), where m≤K such that the manhattan distance between two
#   consecutive cells of such a sequence is in range [L,R]. More over, the cell Ai,j can be used in the sequence
#   at most ci,j times. The task is to maximize the sum of values of all cells in such a sequence.
#
#   Input format
#   In the first line there are 4 integers N,K,L and R denoting respectively the size of the matrix, the maximum
#   length of a valid sequence and the range of manhattan distance between any two consecutive cells in a valid
#   sequence. In the i-th line of the next N lines there is a description of the i-th row of the matrix.
#   It consists of N space separated integers, where the j-th of them denotes Ai,j which is the value in the cell
#   located in the i-th row and j-th column of the matrix. Rows are numbered from 1 to N starting from the top and
#   columns are numbered also from 1 to N starting from the left. After that, N lines follow, in the i-th of them
#   there are N space separated integers c(i,1),c(i,2),…,c(i,N), where ci,j denotes the maximum number of times
#   that cell Ai,j can be used in the resulting sequence.
#
#   Output format
#   In the first line print a single integer M denoting the length of the returning sequence.
#   In the i-th of the next M lines print two space separated integers denoting respectively the row and the
#   column of the i-th cell of the resulting sequence.
#
#   Test generation
#   In all test cases N=500.
#   K is generated uniformly at random from range [N,N^2].
#   L is generated uniformly at random from range [5,10].
#   R is generated uniformly at random from range [15,20].
#   All values Ai,j are generated uniformly at random from range [1,1000].
#   All values ci,j are generated uniformly at random from range [1,10].
#   All values in the input are generated independently.
#
#   Scoring
#   For a valid returned sequence, the absolute score for a single test file is equal to the sum of values
#   in all the cells of the sequence and in a case when a cell occurs more than once in the sequence,
#   its value is counted to the sum exactly the number of this the cell occurs.
#   The final absolute score of the problem is the sum of scores for all the test files.
#   Scoring for the problem is set to relative, which means that the final score of a submission is its final
#   absolute score divided by the best absolute score across all submissions in the contest.
#   During the contest, each submission will be judged only on 50% of the test files. After the contest,
#   the remaining 50% of test files will be added and all submissions will be judged on new set of test files.
#
#   SAMPLE INPUT
#   4 3 2 4
#   1 2 3 4
#   5 6 7 8
#   1 2 3 4
#   5 6 7 8
#   1 3 6 1
#   1 2 2 1
#   2 1 3 2
#   1 2 2 5
#
#   SAMPLE OUTPUT
#   3
#   4 4
#   3 3
#   1 2
#
#   Explanation
#   For the purposes of the sample, N is set to 4, but remember that in all test files N=500. Also, in the sample
#   K=3 and L=2 while R=4. It means that any valid sequence of cells has to have length at most 3 and the manhattan
#   distance between each its two consecutive cells has to be in range [2,4]. The matrix itself looks like that:
#
#   ⎡ 1 2 3 4 ⎤
#   ⎢ 5 6 7 8 ⎥
#   ⎢ 1 2 3 4 ⎥
#   ⎣ 5 6 7 8 ⎦
#
#   Moreover, the number of maximum occurrences of each cell of the matrix can be presented as the following matrix:
#
#   ⎡ 1 3 6 1 ⎤
#   ⎢ 1 2 2 1 ⎥
#   ⎢ 2 1 3 2 ⎥
#   ⎣ 1 2 2 5 ⎦
#
#   The returned sequence described in the sample output consists of 3 cells of the matrix: A(4,4),A(3,3)
#   and A(1,2). This sequence is valid because its length does not exceed K and the manhattan distance between any
#   its two consecutive cells is in range [2,4]. The absolute score of this sequence is: 8+3+2=13.
#
#######################################################################################################################
