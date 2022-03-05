#######################################################################################################################
#
#    startWord
#
#    Given a string and a second "word" string, we'll say that the word matches the string
#    if it appears at the front of the string, except its first char does not need to match exactly.
#    On a match, return the front of the string, or otherwise return the empty string.
#    So, so with the string "hippo" the word "hi" returns "hi" and "xip" returns "hip".
#    The word will be at least length 1.
#
#######################################################################################################################
#
#   startWord("hippo", "hi") → "hi"
#   startWord("hippo", "xip") → "hip"
#   startWord("hippo", "i") → "h"
#   startWord("hippo", "ix") → ""
#   startWord("h", "ix") → ""
#   startWord("", "i") → ""
#   startWord("hip", "zi") → "hi"
#   startWord("hip", "zip") → "hip"
#   startWord("hip", "zig") → ""
#   startWord("h", "z") → "h"
#   startWord("hippo", "xippo") → "hippo"
#   startWord("hippo", "xyz") → ""
#   startWord("hippo", "hip") → "hip"
#   startWord("kitten", "cit") → "kit"
#   startWord("kit", "cit") → "kit"
#
#######################################################################################################################
