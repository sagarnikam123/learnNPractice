# ICPC Team Management

#######################################################################################################################
#
#   Little Chandan is an exceptional manager - apart from his role in HackerEarth - as the person who has to bug
#   everyone, in general... and if possible, try to get some work done.
#   He's also offered a job as the coach of the best Russian teams participating for ACM-ICPC World Finals.
#   Now, Chandan is an extremely good coach, too. But he's a weird person who thrives on patterns in life, in general.
#   So, he has decided that if there are n number of students in total,
#   and he is supposed to divide them in camps of k students - he want them to be arranged in such a way that
#   the length of names of all the students in a camp is equal. I know, totally weird, right?
#
#   Input:
#   The first line will contain the number of test cases. Which will be followed by two integers, n, k - denoting
#   the number of total students, and the number of total students which will be allowed in one camp. After which,
#   n lines will follow denoting the names of all the students who're willing to learn by the great coach.
#
#   Output:
#   If it is possible for all the students be arranged in a camp of k students, print "Possible",
#   else print "Not possible".
#
#   Constraints:
#   1 <= Test Cases <= 50
#   1 <= N <= 1000
#   1 <= K <= 1000
#   1 <= LengthOfAString <= 100
#   The name of a programmer will always be in lower case.
#
#   PS: n%k will ALWAYS be equal to zero - that is, it will possible to divide the
#   n students in equal sized camps of k.
#
#   SAMPLE INPUT
#   2
#   6 3
#   arjit
#   tijra
#   genius
#   chanda
#   ashish
#   arjit
#   4 2
#   bond
#   coder
#   bond
#   lol
#
#   SAMPLE OUTPUT
#   Possible
#   Not possible
#
#   Explanation
#   In the first case, we can divide the six members into two teams of three with people having equal number of
#   characters in their names. In the second case, we cannot do the same.
#
#######################################################################################################################
