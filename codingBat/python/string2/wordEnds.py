#######################################################################################################################
#
#    wordEnds
#
#     Given a string and a non-empty word string, return a string made of each char just before and
#     just after every appearance of the word in the string. Ignore cases where there is no char
#     before or after the word, and a char may be included twice if it is between two words.
#
#######################################################################################################################
#
#   wordEnds("abcXY123XYijk", "XY") â†’ "c13i"
#   wordEnds("XY123XY", "XY") â†’ "13"
#   wordEnds("XY1XY", "XY") â†’ "11"
#   wordEnds("XYXY", "XY") → "XY"
#   wordEnds("XY", "XY") → ""
#   wordEnds("Hi", "XY") → ""
#   wordEnds("", "XY") → ""
#   wordEnds("abc1xyz1i1j", "1") → "cxziij"
#   wordEnds("abc1xyz1", "1") → "cxz"
#   wordEnds("abc1xyz11", "1") → "cxz11"
#   wordEnds("abc1xyz1abc", "abc") → "11"
#   wordEnds("abc1xyz1abc", "b") → "acac"
#   wordEnds("abc1abc1abc", "abc") → "1111"
#
#######################################################################################################################
