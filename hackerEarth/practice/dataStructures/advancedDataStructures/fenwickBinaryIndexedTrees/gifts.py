# Gifts

#######################################################################################################################
#
#   This festive Season HackerEarth decided to send gifts to all of its contributors. Xsquare , Sentinel , Subway ,
#   darkshadows and Venomous got their favourite gifts i.e ,an array full of integers. Contrary to that ma5termind
#   got his favourite string str consisting of upper case letters 'A' , 'B' , 'C' , 'D' and 'E' only.
#   To avoid any kind of comparison ,all the gifts are of same size i.e N. As HackerEarth promotes a very friendly
#   culture, all of them have decided to play together with these gifts. For the purpose to serve ...
#       Xsquare named his array as A.
#       Sentinel named his array as B.
#       Subway named his array as C.
#       Darkshadows named his array as D.
#       Venomous named his array as E.
#   They will mainly perform three types of task.
#
#   Qe X Y : X and Y are the characters denoting the initials of the array.
#
#          def func_Qe(X,Y):
#
#                 for i in range(1,N+1):        #[1,N] (considering 1 based indexing)
#                     temp = X[i]
#                     X[i] = Y[i]
#                     Y[i] = temp
#
#                 return
#
#   Qc x Y : x is an interger denoting an index in the string and Y is a character.
#
#        def func_Qc(x,Y):
#
#               str[x] = Y
#
#               return
#
#   Qs x y : x and y are the integers denoting the xth and yth indices in the string such that x <= y.
#
#          def func_Qs(x,y):
#               sum = 0
#               for i in range(x,y+1):
#                   sum = sum + (select str[i] as array name and add ith element of this array)
#               return sum
#
#   refer to the sample test case for better explanation of the problem.
#   Although they love this game, but all of them have to go to a party tonight. So,they want to finish
#   this game as soon as possible. Help them accomplishing this task.
#
#   Input:
#   First line of input contains a single integer N denoting the size of each gift.
#   Next line of input contains N space separated integers denoting the array A.
#   Next line of input contains N space separated integers denoting the array B.
#   Next line of input contains N space separated integers denoting the array C.
#   Next line of input contains N space separated integers denoting the array D.
#   Next line of input contains N space separated integers denoting the array E.
#   Next line of input contains a string str denoting ma5termind's string.
#   Next line of input contain a single integer Q denoting the number of tasks to be preformed.
#   Next Q line of input contains Q tasks, each from any of the 3 mentioned types.
#
#   Output:
#   Output consists of several lines. For each task of type Qs, print the required answer.
#
#
#   Constraints:
#   1 <= N,Q <= 10^5
#   1 <= A[i] <= 10^9
#   1 <= B[i] <= 10^9
#   1 <= C[i] <= 10^9
#   1 <= D[i] <= 10^9
#   1 <= E[i] <= 10^9
#   1 <= x<=y <= N
#   string str , X , Y consists of upper case letters A,B,C,D,E only.
#
#   Subtask:
#   subtask 1 : 1 <= N,Q <= 1000 : 20 points
#   subtask 2 : 1 <= N,Q <= 105 , There is no query of type Qc : 20 points
#   subtask 3 : 1 <= N,Q <= 105 : 60 points
#
#   NOTE
#   Large input / output data sets, be careful with some languages.
#
#   SAMPLE INPUT
#   3
#   1 2 3
#   4 5 6
#   7 8 9
#   1 2 3
#   4 5 6
#   ABC
#   5
#   Qs 1 3
#   Qc 1 E
#   Qs 1 3
#   Qe A B
#   Qs 1 3
#
#   SAMPLE OUTPUT
#   15
#   18
#   15
#
#   Explanation
#   Qs : A[1] + B[2] + C[3] = 15 Qc : New string EBC Qs : E[1] + B[2] + C[3] = 18 Qe:
#   New array A={4,5,6}; New array B={1,2,3}; Qs: E[1] + B[2] + C[3] = 15
#
#######################################################################################################################
