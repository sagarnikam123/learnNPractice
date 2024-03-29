/**

	Maximum number, GCD condition

	You will be given an array A of N integers. You need to answer M queries.
	Each query is of the form G x y.
	For each query, construct the set S from A. A[i] is included in S if x <= i <= y and GCD(G,A[i]) > 1.

	Let MAX be the maximum number present in S. Output MAX and number of occurances of MAX in S.
	If no such number exists, output "-1 -1" (without quotes).

	Input
	The first line of the input contains 2 integers N and M.
	Next line has N integers representing the elements of array A.
	M lines follow, one per query. Each line has 3 integers G, x and y

	Output
	For each query output the required Answer.

	Constraints
	    1 ≤ N,M,G,A[i] ≤ 100000  (1 ≤ i ≤ N)
	    1 ≤ x ≤ y ≤ N
***********************************************************************************************************************
Example

Input
6 5
1 2 3 4 5 4
2 1 5
121 1 6
3 2 6
5 5 5
24 4 6

Output
4 1
-1 -1
3 1
5 1
4 2

Explanation

Query #1
GCD(2,1)=1, GCD(2,2)=2, GCD(2,3)=1, GCD(2,4)=2, GCD(2,5)=1

S = {2,4}

MAX = 4

Query #2
S = {}

There is no element in A such that GCD(121, A[i])>1

Query #5
GCD(24,4)=4, GCD(24,5)=1, GCD(24,4)=4

S = {4,4}

MAX = 4

Answer is "4 2" as there are 2 occurances of 4 in S

Author's Note
Time Limit is not strict if correct Algorithm is used.Author's solution passes with 0.6 sec Time Limit
(C++ solution, using scanf and printf). Maximum Input File Size < 3MB.

**********************************************************************************************************************/
