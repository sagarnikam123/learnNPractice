# Shantam and Richness

#######################################################################################################################
#
#   Shantam is very rich , even richer than Richie Rich. He is extremely talented in almost everything except one,
#   mathematics. So one day, he pays a visit to a temple (to pray for his upcoming mathematics exams) and decides
#   to donate some amount of money to the poor people ( everyone is poor on a relative scale to Shantam). He order
#   N people to sit in a linear arrangement and indexes them from 1 to N , to ease the process of donating money.
#   As with all rich people , their way of doing things is completely eerie and different. Shantam donates his money
#   in M steps , each of his step being to choose two indices L and R , and an amount of money C and then he donates
#   C currencies to each and every person whose index lies in [L,R]. In other words he donates C currencies to
#   every index i such L <= i <= R.
#   Luckily, you too were among the N people selected and somehow you know all the M steps in advance. Figure out
#   the maximum amount of money you can obtain and at what position you should sit to get this maximum amount of
#   money. If multiple positions guarantee the maximum amount of money , output the minimum index out of all
#   these possibilities. You will be given initial L , R and C (which points to first query)
#   as well as P , Q and S. Each subsequent query is generated as :
#
#   L[i] = (L[i-1] * P + R[i-1]) % N + 1;
#   R[i] = (R[i-1] * Q + L[i-1]) % N + 1;
#   if(L[i] > R[i])
#       swap(L[i] , R[i]);
#   C[i] = (C[i-1] * S) % 1000000 + 1;
#
#   Input Format :
#   The first line contains T , the number of test cases. The first line of each test case contains two space
#   separated integers N and M , which denotes the number of people and the number of steps, respectively. The next
#   line contains integers L , R , C , P , Q and S , which are used to generate the queries using
#   the method specified above.
#
#   Output Format :
#   For each test case , output one line containing two space separated integers, the first being the optimal
#   position and the second being the highest amount of money that can be obtained.
#
#   Constraints :
#   1 <= T <= 200
#   1 <= N <= 10^5
#   1 <= M <= 10^5
#   1 <= L <= R <= N
#   1 <= C <= 10^6
#   1 <= P,Q,S <= 10^4
#
#   SAMPLE INPUT
#   2
#   5 2
#   1 1 1 1 1 1
#   5 1
#   1 3 2 4 3 5
#
#   SAMPLE OUTPUT
#   3 2
#   1 2
#
#   Explanation
#
#   Sample Case 2 :
#   Initially all have 0 money, and can be represented as [ 0 , 0 , 0 , 0 , 0].
#   After first update , [2, 2, 2, 0, 0]
#   The maximum amount is 2 and the minimum position with this maximum amount is 1.
#
#######################################################################################################################
