#######################################################################################################################
#
#    noTeenSum
#
#    Given 3 int values, a b c, return their sum. However, if any of the values is a teen
#    -- in the range 13..19 inclusive -- then that value counts as 0, except 15 and 16 do not count
#    as a teens. Write a separate helper "public int fixTeen(int n) {"that takes in an int value and
#    returns that value fixed for the teen rule. In this way,
#    you avoid repeating the teen code 3 times (i.e. "decomposition"). Define the helper below and
#    at the same indent level as the main noTeenSum().
#
#######################################################################################################################
#    
#    noTeenSum(1, 2, 3) → 6
#    noTeenSum(2, 13, 1) → 3
#    noTeenSum(2, 1, 14) → 3
#    noTeenSum(2, 1, 15) → 18
#    noTeenSum(2, 1, 16) → 19
#    noTeenSum(2, 1, 17) → 3
#    noTeenSum(17, 1, 2) → 3
#    noTeenSum(2, 15, 2) → 19
#    noTeenSum(16, 17, 18) → 16
#    noTeenSum(17, 18, 19) → 0
#    noTeenSum(15, 16, 1) → 32
#    noTeenSum(15, 15, 19) → 30
#    noTeenSum(15, 19, 16) → 31
#    noTeenSum(5, 17, 18) → 5
#    noTeenSum(17, 18, 16) → 16
#    noTeenSum(17, 19, 18) → 0
#    
#######################################################################################################################
