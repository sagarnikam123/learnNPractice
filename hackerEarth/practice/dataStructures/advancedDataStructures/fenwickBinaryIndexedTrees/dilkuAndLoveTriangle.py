# Dilku and Love Triangle

#######################################################################################################################
#
#   Dilku, as we all know, is very fond of girls. This time, he is trapped into a love triangle!
#   Bhopu, his first love and the princess of fairytale kingdom, found out that Dilku is also dating someone else
#   and hence is extremely angry on him, this time it's very serious. Afraid of Bhopu, Dilku ran away from his house
#   and he is hiding somewhere. Bhopu wants to get Dilku punished, so she decided to send troops to find him.
#   Bhopu has infinite supply of troops. She is, after all, the princess and the only daughter of powerful King Raj!.
#   The kingdom can be represented by an undirected graph with N cities and N-1 roads connecting these cities,
#   where it is possible to go from any city u to any other city v by traversing one or more roads.
#   Now, Bhopu asks you to help her commanding the troops.
#   Initially, there are no troops in the cities. You are responsible for performing Q operations,
#   each of one of the following two types:
#       Given cities u and v, send one troop to every city lying on the path between cities u and v.
#       Once a troop has been sent to a city, it stays there and does not move for the whole process.
#       Given a city x, find the number of troops that have already been sent to city x before.
#
#
#   Input format
#   The first line contains two integers N and Q separated by a single space. N - 1 lines follow. In each of them,
#   there are two space separated integers u and v, denoting that cities u and v are connected by a road.
#   After that, Q lines follow. Each of them contains a description of a single query and starts with integer t
#   denoting the type of this query. If a query is of the first type, t is followed by integers u and v.
#   If the query is of the second type, t is followed by a single integer x.
#   All integers in a description of a query are separated by a single space.
#
#   Output format
#   For each query of the second type, output a single line containing
#   a single integer representing the answer to this query.
#
#   Constraints
#   1 <= N <= 5 * 10^5
#   1 <= Q <= 5 * 10^5
#   1 <= u,v,x <= N
#   1 <= t <= 2
#
#   SAMPLE INPUT
#   6 6
#   1 2
#   2 3
#   1 4
#   4 5
#   1 6
#   1 3 5
#   2 4
#   1 3 6
#   2 1
#   1 5 6
#   2 4
#
#   SAMPLE OUTPUT
#   1
#   2
#   2
#
#######################################################################################################################
