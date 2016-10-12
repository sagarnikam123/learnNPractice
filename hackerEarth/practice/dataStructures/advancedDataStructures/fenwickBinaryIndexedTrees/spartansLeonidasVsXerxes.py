# Spartans : Leonidas Vs Xerxes

#######################################################################################################################
#
#   The battle of Thermopylae is between the Persians and Greeks during the Persian invasion. The Greek force is
#   very small but determined to make a stand against the huge Persian army.
#   All of Greece is in fear, knowing that the army of the Persian king Xerxes has begun its invasion of Greece.
#   Already the Thessalians had gone over to the Persian side, but some Greek cities has come together and forgotten
#   their usual rivalries, determining to stop the Persian invasion. These cities agreed that Sparta would lead
#   the Greek army, as its reputation in war was unmatched by any other Greek state.
#   The Spartans has chosen to defend a narrow pass,between the mountains of central Greece and the sea, called
#   Thermopylae. Greek force now waiting, made up of only 300 Spartans under their king, Leonidas.
#   King Xerxes has huge Persian army of 'N' soldiers.They are standing in straight line and each ith soldiers has
#   power Pi . King Xerxes knows that collaboration between adjacent soldiers is more,So Xerxes want to send longest
#   continuous chain of his soldiers among 'N' soldiers such that their power is strictly increasing.
#   As King Xerxes knows black magic,He can increase or decrease the power of ith soldier.You are the advisor of
#   King Xerxes,He asked you to tell the length of longest continuous increasing chain of soldiers of current army.
#
#   At any time, King Xerxes will do two operations :
#   1 x y : Increase the power of xth soldier by 'y' - (if negative, it means decrease.)
#   0 x y : Ask you the length of longest continuous increasing chain of soldiers in range [x , y] inclusive
#
#   Input :
#   First Line contains an integer indicating number of test cases 't'
#   For each case,there are two integers separated by a space in a line 'N' , 'Q' indicating number of soldiers in
#   Persian army and number of queries.
#   Next Line contains 'N' space separated integers Pi indicating power of ith soldier.
#   Next 'Q' lines contains three integers 'T' , 'x' and 'y' where T can be 0 or 1 indicating type of query.
#
#   Output :
#   For Each query of type 0,Print the answer as asked in the problem.
#
#   Constraints :
#   1 <= t <= 10
#   1 <= N,Q <= 10^5
#   1 <= Pi <= 10^9
#   For type 1 query: 1 <= x <= N , |y| <= 10^9
#   For type 0 query: 1 <= x <= y <= N
#
#   SAMPLE INPUT
#   1
#   5 6
#   5 1 2 3 2
#   0 1 5
#   1 5 4
#   0 1 5
#   0 3 5
#   1 3 10
#   0 3 5
#
#   SAMPLE OUTPUT
#   3
#   4
#   3
#   2
#
#   Explanation
#
#   Initial Power of soldiers : 5 1 2 3 2
#   1) 0 1 5 : length of longest increasing chain in range [1,5] = 3 i.e {1,2,3}
#   2) 1 5 4 : update power of 5th solder by 4 : 5 1 2 3 6
#   3) 0 1 5 : length of longest increasing chain in range [1,5] = 4 i.e {1,2,3,6}
#   4) 0 3 5 : length of longest increasing chain in range [3,5] = 3 i.e {2,3,6}
#   5) 1 3 10 : update power of 3rd solder by 10 : 5 1 12 3 6
#   6) 0 3 5 : length of longest increasing chain in range [3,5] = 2 i.e {3,6}
#
#######################################################################################################################
