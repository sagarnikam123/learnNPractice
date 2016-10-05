# Monk And Champions League

#######################################################################################################################
#
#   Monk's favourite game is Football and his favourite club is "Manchester United". Manchester United has qualified
#   for the Champions League Final which is to be held at the Wembley Stadium in London. So, he decided to go
#   there and watch his favourite team play. After reaching the stadium, he saw that many people have lined up for
#   the match tickets. He knows that there are M rows in the stadium with different seating capacities.
#   They may or may not be equal. The price of the ticket depends on the row. If the row has K(always greater than 0)
#   vacant seats, then the price of the ticket will be K pounds(units of British Currency). Now, every football fan
#   standing in the line will get a ticket one by one.
#   Given the seating capacities of different rows, find the maximum possible pounds that the club will gain with
#   the help of the ticket sales.
#
#   Input:
#   The first line consists of M and N. M denotes the number of seating rows in the stadium and N denotes the number
#   of football fans waiting in the line to get a ticket for the match.
#   Next line consists of M space separated integers X[1],X[2],X[3].... X[M] where X[i] denotes the number of empty
#   seats initially in the ith row.
#
#   Output:
#   Print in a single line the maximum pounds the club will gain.
#
#   Constraints:
#   1 <= M <= 1000000
#   1 <= N <= 1000000
#   1 <= X[i] <= 1000000
#   Sum of X[i] for all 1 <= i <= M will always be greater than N.
#
#   SAMPLE INPUT
#   3 4
#   1 2 4
#
#   SAMPLE OUTPUT
#   11
#
#   Explanation
#   In the sample test case, number of rows is 3 and the 4 people waiting in line to get a ticket.
#   Since the maximum cost of ticket initially is 4 pounds, therefore the first person in line will
#   buy a ticket for the 3rd row.
#   The person standing in line will again choose the 3rd row as it has the maximum number of seats,
#   which will cost him 3 pounds.
#   The next person will have 2 choices, he can either choose the 2nd row or the 3rd row which will cost him 2 pounds.
#   Similarly, the last person will choose the row will 2 seats remaining, which will cost him 2 pounds.
#   Total cost = 4+3+2+2 = 11 pounds.
#
#######################################################################################################################
