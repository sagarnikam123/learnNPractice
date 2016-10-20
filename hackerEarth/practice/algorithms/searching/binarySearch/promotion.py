# Promotion

#######################################################################################################################
#
#   Ramesh is a hard-working employee.Seeing his dedication towards his work his boss decided to promote him.
#   Ramesh was overjoyed on getting to know this.But soon he realized he needed to shift to another Town X. \
#   Ramesh needed to transport his n boxes to Town X for which he contacted the company "Packers and Movers".
#   This company sent him m trucks.Each truck took 1 hour to go from his house to Town X and another 1 hour to return.
#   But each truck could carry only 1 box at a time and also each truck has a limit for the maximum weight of the
#   box it can carry.A truck can be used multiple times. Since Ramesh is busy he gives you the job for finding the
#   minimum time in which he can transfer all his n boxes to Town X.
#
#   INPUT
#   The first line contains 2 integers n and m.The next line contains n integers denoting the weight of each box.
#   This is followed by a line containing m integers denoting the maximum capacity of each truck.
#
#   Output
#   Print the minimum time to transfer all the boxes to Town X.
#
#   Constraints
#   1 <= n,m <= 10000
#   1 <= weight of each box <= 1000000
#   1 <= maximum capacity of each truck <= 1000000
#   Note: A solution always exist.
#
#   SAMPLE INPUT
#   7 2
#   10 2 16 19 6 11 5
#   29 25
#
#   SAMPLE OUTPUT
#   7
#
#   Explanation
#   The first truck carries the first box and then return to the house in 2 hours again carries the 2nd box and
#   return and again the 3rd box and return taking a total of 6 hours.
#   The second truck similarly carries the next 3 boxes and return to the house in 6 hours.
#   In the 6th hour one of the two truck gets loaded with the 7th box and
#   reaches Town X with the last box at 7th hour.
#
#######################################################################################################################
