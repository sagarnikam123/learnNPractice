# Joseph and String

#######################################################################################################################
#
#   One day, Joseph got a new homework from his teacher. He hates doing homework, especially about the strings.
#   Nick, as his friend, decided to help him. But he didn't know how difficult the problem is!
#   "Oh my goodness! I can't solve this problem, Joseph !" he said! Of course, Joseph knew that Nick can't solve,
#   so he asked for help on his Facebook page. He still hopes that someone will read this problem and solve for him.
#   So, the problem is as follows:
#
#   Given a string S . Also, there are Q queries of following type:
#
#       v l r : you need to find r(max)i=l F(v,i).
#
#   Lets say, t is a concatenation SlSl+1…Sr, then F(l,r−l+1)=occur(t,S)∗|t|,
#   where occur(t,S) is the number of occurrences of string t in S.
#
#   Input format
#   The first line contains a single integer n — the length of the string S.
#   Next line contains a string S consisting of lowercase English letters.
#   Next line contains a single integer Q — the number of queries.
#   Next Q lines contain three integers each, vi,li and ri denoting the query described above.
#
#   Output format
#   Print the answer for each query.
#
#   Constraints
#   1 <= n,Q <= 10^5
#   1 <= vi <= n and 1 <= li <= ri <= n−vi+1
#
#   Subtasks
#   Subtask #1 (10 points) : 1 <= n,Q <= 100
#   Subtask #2 (20 points) : 1 <= n,Q <= 2000
#   Subtask #3 (70 points) : Original constraints
#
#   SAMPLE INPUT
#   8
#   abacabab
#   4
#   1 1 4
#   1 5 5
#   2 1 1
#   4 1 4
#
#   SAMPLE OUTPUT
#   6
#   5
#   3
#   4
#
#   Explanation
#   In the first query, v=1 where l=1,r=4, then F(1,3) is maximum value we can achieve. t is aba, respectively
#   F(1,3)=occur(t,S)∗|t|=2∗3=6.
#   In the last query: F(4,1)=1,F(4,2)=2,F(4,3)=3,F(4,4)=4 , so answer is 4.
#
#######################################################################################################################
