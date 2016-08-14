#######################################################################################################################
#
#    xyzMiddle
#
#    Given a string, does "xyz" appear in the middle of the string? To define middle, we'll say that
#    the number of chars to the left and right of the "xyz" must differ by at most one.
#    This problem is harder than it looks.
#
#######################################################################################################################
#   
#   xyzMiddle("AAxyzBB") â†’ true
#   xyzMiddle("AxyzBB") â†’ true
#   xyzMiddle("AxyzBBB") â†’ false
#   xyzMiddle("AxyzBBBB") → false
#   xyzMiddle("AAAxyzB") → false
#   xyzMiddle("AAAxyzBB") → true
#   xyzMiddle("AAAAxyzBB") → false
#   xyzMiddle("AAAAAxyzBBB") → false
#   xyzMiddle("1x345xyz12x4") → true
#   xyzMiddle("xyzAxyzBBB") → true
#   xyzMiddle("xyzAxyzBxyz") → true
#   xyzMiddle("xyzxyzAxyzBxyzxyz") → true
#   xyzMiddle("xyzxyzxyzBxyzxyz") → true
#   xyzMiddle("xyzxyzAxyzxyzxyz") → true
#   xyzMiddle("xyzxyzAxyzxyzxy") → false
#   xyzMiddle("AxyzxyzBB") → false
#   xyzMiddle("") → false
#   xyzMiddle("x") → false
#   xyzMiddle("xy") → false
#   xyzMiddle("xyz") → true
#   xyzMiddle("xyzz") → true
#   
#######################################################################################################################
