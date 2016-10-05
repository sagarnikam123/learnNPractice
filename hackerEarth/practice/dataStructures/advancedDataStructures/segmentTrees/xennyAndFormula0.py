# Xenny and Formula 0

#######################################################################################################################
#
#   Xenny drove in a popular racing championship called Formula 0. His long-distant friend Mr. Kmcode had made a
#   racing track for him in RSQLand. To entertain the public, he used to keep a drag racing event at the Kmcode
#   Track before every race. The Kmcode Track was circular and there were N grand stands along the track, numbered
#   from 1 to N, separated by 1 angular unit each.
#   Initially, stand i contained Ai people.
#   In each drag race, he started from stand number X with initial angular velocity of magnitude w angular units per
#   second. At the end of each second, his car's angular velocity decreased by a magnitude of d angular units per
#   second. His car always came to a halt when its angular velocity reached equal to or below zero.
#   In each race, Xenny counted the total number of people in stands that he crossed in that race and reported its
#   value modulo 109 + 7, to his team.
#   Whenever Xenny started his race from a particular stand X, at the end of the race, his team increased the
#   number of passes for his races and hence, Y people were added to stand number X after the race.
#   Given the data for R races, print the number that Xenny reported to his team in each race.
#
#   Input
#   First line of input contains a single integer R - number of drag races.
#   Second line of input contains a single integer N - the number of grand stands.
#   Third line contains N space-separated integers - Ai denoting the number of people in ith stand.
#   R lines follow. Each line contains 4 space separated positive integers - X, w, d, Y - the starting stand,
#   the initial angular velocity, the deceleration and the number of people that get added
#   to stand X after each race.
#
#   Output
#   Print R lines, ith line containing the number of people Xenny crosses, modulo 109 + 7, in the ith race.
#
#   Constraints
#   1 ≤ R ≤ 105
#   1 ≤ N ≤ 105
#   1 ≤ Ai ≤ 109
#   1 ≤ X ≤ N
#   2 ≤ w ≤ 109
#   1 ≤ d ≤ 109
#   1 ≤ Y ≤ 100
#
#   SAMPLE INPUT
#   3
#   5
#   1 1 1 1 1
#   1 2 1 10
#   5 2 1 10
#   1 4 1 10
#
#   SAMPLE OUTPUT
#   4
#   14
#   61
#
#   Explanation
#   Race 1:
#   Xenny starts at Stand 1 with w = 2. He is able to reach Stand 4, where he halts as his angular velocity
#   becomes 0. Hence, he crosses Stand[1] + Stand[2] + Stand[3] + Stand[4] = 1 + 1 + 1 + 1 = 4 people.
#   10 people are added to Stand[1] (point where he started the race).
#
#   Explanation of how angular velocity changes every second:
#   d = 1 (constant)
#   At time = 0 sec, w = 2.
#   At time = 1 sec, w = 1.
#   At time = 2 sec, w = 0.
#
#   Race 2:
#   Xenny starts at Stand 5 with w = 2. Since the track is circular, he is able to reach Stand 3. He crosses
#   Stand[5] + Stand[1] + Stand[2] + Stand[3] = 1 + 11 + 1 + 1 = 14 people.
#   10 people are added to Stand[5].
#
#   Race 3:
#   Xenny starts at Stand 1 with w = 4. He crosses Stand[1] + Stand[2] + Stand[3] + Stand[4] + Stand[5] +
#   Stand[1] + Stand[2] + Stand[3] + Stand[4] + Stand[5] + Stand[1]
#   = 11 + 1 + 1 + 1 + 11 + 11 + 1 + 1 + 1 + 11 + 1 = 61 people.
#   10 people are added to Stand[1].
#
#######################################################################################################################
