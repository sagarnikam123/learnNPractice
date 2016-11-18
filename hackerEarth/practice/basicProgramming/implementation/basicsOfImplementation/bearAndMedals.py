# Bear and Medals

#######################################################################################################################
#
#   Limak is a little bear who loves sports. He has been waiting so long for the Day of Sport in his school.
#   But it's today and he is late! The Day of Sports consists of some number of contests. In each competition there
#   are three medals - one gold, one silver and one bronze. These medals are awarded to three different contestants
#   and there are no ties. You can assume that there are at least three contestants
#   so all three medals are always awarded.
#   Limak will get to a school in a moment but know he can only cheer for his friends. He has N friends and
#   by a phone they informed him about their achievements so far. Limak knows that i-th of his friends
#   got G[i] golds, S[i] silvers, and B[i] bronzes.
#   Limak hopes he didn't skip many contests. He knows only numbers of medals awarded to his friends.
#   Help him and with this knowledge find the minimum possible number of contests Limak skipped.
#
#   Input format:
#   The first line contains one integer number T, denoting number of independent test cases.
#   Then T test cases follow.
#   For each test case the first line contains one integer number N, denoting number of Limak's friends.
#   i-th of the next N lines contains three integers, G[i], S[i], and B[i],
#   denoting numbers of medals awarded to i-th friend.
#
#   Output format:
#   For each test case find the minimum number of contests and print it in the single line.
#
#   Constraints:
#   1 <= T <= 10
#   1 <= N <= 1000
#   0 <= G[i], S[i], B[i] <= 1000
#
#   SAMPLE INPUT
#   2
#   4
#   0 0 2
#   1 2 1
#   2 0 0
#   0 2 0
#   1
#   0 1000 0
#
#   SAMPLE OUTPUT
#   4
#   1000
#
#   Explanation
#   In the first test case it's impossible for Limak's friends to get all those medals in 3 contests but
#   the table below shows that it's possible in 4 contests. Each column represents one contest and rows are
#   Limak's friends. So in the first contest 1-st of Limak's friends got bronze medal, 2-nd got silver,
#   and 3-rd got gold. Note that in the last contest none of Limak's friends got gold medal.
#   It means that some other contestant got it - not only Limak's friends participate!
#   (image - table for the first sample)
#   In the second test case the only Limak's friend could get silver medal in each of 1000 contests.
#
#######################################################################################################################
