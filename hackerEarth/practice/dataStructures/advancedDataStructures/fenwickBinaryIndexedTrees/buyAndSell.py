# Buy and Sell !

#######################################################################################################################
#
#   A good and robust is always difficult to design, however, its benefits are unlimited and is much better
#   in the long term.
#   Today, you need to do just the same, i.e. you need to create a system to successfully process the incoming and
#   outgoing stock of a retail outlet.
#   The outlet stocks and sells N types of items. Each item has a name and a price per unit associated with it.
#   The name of each item on sale is guaranteed to be unique. You shall be given the names and prices
#   for each of the N items.
#
#   Now, based on this list of items, You need to process 3 types of queries:
#       +X : Given a String X, add one unit of item X to the available stock. It is guaranteed that item X shall
#           be among the list of items the shop trades in.
#       −X : If item X exists in the available stock, remove one occurrence of it from the available stock.
#       ? Y : Now, you need to find the summation of available units of each item having price strictly greater than Y.
#   Initially the stock list is empty. For each query of the 3rd type, you need to print the answer on a new line.
#
#   Input Format :
#   The first line contains a single integers N denoting the number of items the shop trades in. Each of the next
#   N lines contains a String Xi and an integer ki where the ith line denotes that the ith item has name Xi and
#   price ki. The next line contains a single integer Q. Each of the next Q lines contains either of the
#   3 types of queries. The first symbol of each query denotes the type of query. A symbol '+' denotes the
#   first type of query, '-' denotes a query of the second type, '?' of the third respectively.
#
#   Output Format :
#   For each query of the 3rd type, print the answer on a new line
#
#   Constraints :
#   1 <= N <= 10^5
#   1 <= Q <= 10^5
#   1 <= |Xi| <= 10
#   1 <= ki <= 10^5
#   0 <= Y <= 10^5
#
#   Note :
#   The name of each item on sale shall consist of lowercase English alphabets only
#
#   SAMPLE INPUT
#   5
#   banana 10
#   biscuit 5
#   apple 10
#   mango 1
#   juice 14
#   5
#   + banana
#   + apple
#   ? 1
#   + mango
#   ? 0
#
#   SAMPLE OUTPUT
#   2
#   3
#
#   Explanation
#   For the third query, the available stock consists of 1
#   unit of banana and 1 one unit of apple, thus the answer is equal to 1 + 1 = 2.
#
#######################################################################################################################
