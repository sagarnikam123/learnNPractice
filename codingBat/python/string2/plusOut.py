#######################################################################################################################
#
#    plusOut
#
#    Given a string and a non-empty word string, return a version of the original String where all
#    chars have been replaced by pluses ("+"), except for appearances of the word string
#    which are preserved unchanged.
#
#######################################################################################################################
#
#   plusOut("12xy34", "xy") â†’ "++xy++"
#   plusOut("12xy34", "1") â†’ "1+++++"
#   plusOut("12xy34xyabcxy", "xy") â†’ "++xy++xy+++xy"
#   plusOut("abXYabcXYZ", "ab") → "ab++ab++++"
#   plusOut("abXYabcXYZ", "abc") → "++++abc+++"
#   plusOut("abXYabcXYZ", "XY") → "++XY+++XY+"
#   plusOut("abXYxyzXYZ", "XYZ") → "+++++++XYZ"
#   plusOut("--++ab", "++") → "++++++"
#   plusOut("aaxxxxbb", "xx") → "++xxxx++"
#   plusOut("123123", "3") → "++3++3"
#
#######################################################################################################################
