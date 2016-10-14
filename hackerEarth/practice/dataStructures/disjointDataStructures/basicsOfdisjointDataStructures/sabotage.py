# Sabotage
#######################################################################################################################
#
#   ZYX is a famous international-level linguistics and informatics competitor. He is the favorite to win this
#   year's IOI competition.
#   Fifiman, another great coder in his own right, known as the "King of Algorithms", was unfortunately overshadowed
#   by ZYX's outstanding ability many times in various informatics competitions. To this day, he is burning with
#   bitter regret and loathing towards the young genius.
#   This year's IOI is held in country KZ. Naturally, when Fifiman heard that ZYX would be travelling to country
#   KZ directly from the country where ZYX's linguistics olympiad is taking place, he had a malicious thought.
#   If Fifiman can make the journey as painful as possible, perhaps ZYX will be too tired to win the IOI! Since
#   Fifiman is also an accomplished hacker, he decided to break into the systems of some airline companies
#   to cancel some flights.
#   For simplicity, you can assume that a flight is a direct two-way flight between two countries. ZYX is going
#   to travel from the country where the linguistics olympiad is being held to country KZ, possibly switching
#   flights several times. An itinerary, or sequence of flights, is considered valid if and only if it does not
#   visit the same country more than once. Additionally, each two consecutive cities in the itinerary should be
#   connected by a direct flight.
#   Unfortunately, Fifiman is not sure where the linguistics olympiad is being held. He also does not know exactly
#   which country is country KZ. Therefore, he has decided to cancel flights in such a way that ZYX's journey,
#   no matter which two countries he is travelling between, is inconvenient. Travelling between two countries
#   is considered inconvenient if and only if there is exactly one valid itinerary. Note that it should still
#   be possible to travel between any two countries by this definition.
#   Among all possible ways to cancel flights, Fifiman is interested in the way that cancels the most flights.
#   If there are multiple ways to do so, Fifiman will take the lexicographically minimal solution,
#   and he will cancel the flights with the smaller indices before the flights with the larger indices.
#   And it turns out that you work for one of the airline companies Fifiman is going to hack. To prevent a major
#   communications breakdown, you first need to figure out which flights Fifiman is planning to cancel!
#
#   Note: To compare two different solutions, find the first cancelled flight that is different in the order
#   Fifiman cancels the flights. The solution with the smaller indexed flight at that position is considered
#   to be lexicographically smaller than the other solution. The smallest solution out of all the possible
#   solutions is considered to be the lexicographically minimal solution.
#
#   Input Format:
#   The first line of input will contain N and M, the number of countries and the number of direct flights,
#   respectively.
#   The next M lines of input will each contain two integers u and v, indicating that there is a direct flight
#   between countries u and v. There may be multiple direct flights between any pair of countries, and no country
#   will have a flight to itself. The flights are numbered from 1 to M in the order they are given in the input.
#
#   Output Format:
#   The first line of output should contain an integer K, the number of flights Fifiman will cancel.
#   The next K lines should contain the indices of flights Fifiman cancels (according to the problem statement,
#   these will be in ascending order. It is guaranteed that a solution always exists.
#
#   Constraints:
#   For all subtasks,
#   1 ≤ u, v ≤ N
#   u ≠ v
#   [Subtask 1 - 20%]
#   2 ≤ N ≤ 20
#   1 ≤ M ≤ 190
#   [Subtask 2 - 40%]
#   2 ≤ N ≤ 1000
#   1 ≤ M ≤ 1000
#   [Subtask 3 - 40%]
#   2 ≤ N ≤ 10^5
#   1 ≤ M ≤ 10^5
#
#   SAMPLE INPUT
#   3 4
#   2 1
#   1 2
#   2 3
#   3 1
#
#   SAMPLE OUTPUT
#   2
#   1
#   2
#
#   Explanation
#   First, Fifiman should cancel the first flight, as it's a duplicate of the second flight. Then, Fifiman could
#   cancel any of the three remaining flights, but out of the three choices, cancelling the first remaining one
#   is the lexicographically minimal solution.
#
#######################################################################################################################
