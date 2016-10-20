# Triangular Ranges

#######################################################################################################################
#
#   Kuku recently learnt about triangular numbers. If you are not familiar with the triangular numbers follow this
#   link first http://en.wikipedia.org/wiki/Triangular_number. Ani thinks Kuku has not learnt it properly and
#   start asking questions. But, As we all know kuku is one of the most intelligent on this planet. He answered
#   each and every question correctly. This annoyed Ani and he geared up his question's level and started asking
#   even harder questions. Kuku can't answer such big questions manually. So , He decided to write a computer
#   program which can answer Ani's questions .
#   Kuku is good at mathematics but not at programming ( Dont Doubt His Intelligence ) . So,he hired you
#   ( A World Class Programmer ) to write a computer program which can answer Ani's Questions with in time.
#
#   In Each question, Ani has given a range [L,R] and asked kuku to calculate numbers of
#   such triplets [A,B,K] which follows
#   A+B=K
#   where A,B are any two triangular numbers and K must be in an integers that belongs
#   to given range [L,R] both inclusive.
#   Note :: Two triplets are considered to be different if they contain at least one different elements [A,B,K ].
#
#   INPUT:
#   First line of input contains a single integer Q denoting the number of Ani's questions.
#   Next Q lines of input contains two space separated integers L R each describing one question.
#
#   OUTPUT:
#   Output consists of Q
#
#   lines each containing answer to the corresponding question.
#
#   CONSTRAINTS:
#   1 <= Q <= 5
#   1 <= L <= R <= 10^12
#
#   SAMPLE INPUT
#   2
#   1 5
#   16 16
#
#   SAMPLE OUTPUT
#   2
#   2
#
#   Explanation
#   For # test 1: L=1,R=5 :: Two such triplets are [1,1,2], [1,3,4] which satisfies the given criteria.
#   triplet [3,1,4] also satisfies the given criteria but we will not consider it as this triplet contains same
#   set of elements as that of triplet [1,3,4].
#   For # test 2: L=16, R=16 :: Two such triplets are [1,15,16],[6,10,16] which satisfies the given criteria.
#
#######################################################################################################################
