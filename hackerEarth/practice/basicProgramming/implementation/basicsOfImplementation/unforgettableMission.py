# Unforgettable Mission

#######################################################################################################################
#
#   Max Payne is in a duel with some guy. They are trapped in a set of n rooms numbered from 1 to n.
#   Each pair of distinct rooms are connected with exactly one hallway. Passing hallway between i-th and
#   j-th room(i < j) gives a person ai,j,c amount of energy (it may be negative, in that case your the person
#   loses energy instead of gaining it), thus we say energy of this hallway is ai,j,c where c is a constant integer,
#   that Max should declare before the duel starts.
#   It's the rules of duel that Max should pick a set of rooms (possibly empty). Due to Max's name
#   he likes maximizing stuff. So, the sum of energies of all hallways between the rooms in this set should be
#   as large as possible. We call this sum of energies the Goodness of this set. After Max picks this set,
#   he will declare c as the number of inversion of his set compared to all rooms; More formally c will be number
#   of pairs i, j such that 1 <= i < j <= n such that i is in his set (the set you will choose for him) and j isn't.
#   It's easy to prove that c will always be less than or equal to n^2/4.
#   Help Max find such set with maximum Goodness possible.
#
#   Input
#   The first and only line of input contains two integers n and x (2 <= n <= 100, 0 <= x < 1000000007).
#
#   Size of data could be huge, so you have to generate the 3D array a yourself:
#
#   //x is 64-bit variable;
#   function rnd(){
#       x = (x * 37 + 10007) % 1000000007;
#       return x;
#   }
#   function sign(){
#       if(rnd() > 500000003)   return +1;
#       return -1;
#   }
#   function rng(){
#       value = rnd();
#       value *= sign();
#       return value;
#   }
#   function init(){
#       for(i = 1 to n)
#           for(j = i + 1 to n)
#               for(k = 0 to n*n/4)
#                   a[i][j][k] = rng();
#   }
#
#   The second number in the input is the initial value of x in code above.
#
#   Output
#   The first line of output should contain a single integer s, the size of your set.
#   The second line should contain s distinct integers between 1 to n (inclusive) separated by spaces,
#   the number of rooms in your set.
#
#   Scoring
#   The value displayed to you is Goodness produced by your solution, divided by n⋅(n−1)/2.
#   If Goodness is less than 0 your solution will get score 0. The person with maximal Goodness will get the
#   full score and the others will get scores relative to his/her answer.
#
#   Note
#   You may get wrong answer in following cases:
#
#   1) You print more or less than s numbers.
#   2) Your program prints a character that is not a digit nor whitespace.
#   3) Two or more integers in your sequence are the same.
#   4) One or more integers in your sequence don't belong in interval [1,n].
#
#   Don't worry, checker will ignore the whitespaces.
#   Test file generation
#   In 20% of the test cases, n is chosen randomly between [2, 20]
#   In 20% of the test cases, n is chosen randomly between [21, 40]
#   In 20% of the test cases, n is chosen randomly between [41, 60]
#   In 20% of the test cases, n is chosen randomly between [61, 80]
#   In 20% of the test cases, n is chosen randomly between [81, 100]
#   x is chosen randomly in range [0, 10^9 + 6]
#
#   50% of the test files will be run during the contest, and the rest will be run after the contest is over.
#   The final score will be calculated by only the later half(to be run after the contest is over).
#
#   SAMPLE INPUT
#   8 85
#
#   SAMPLE OUTPUT
#   4
#   1 2 7 8
#
#   Explanation
#   Score of the sample output equals approximately 44029579.5357142857. Note that it is not the best possible answer.
#
#######################################################################################################################
