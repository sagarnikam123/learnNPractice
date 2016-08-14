#######################################################################################################################
#
#    zipZap
#
#    Look for patterns like "zip" and "zap" in the string -- length-3, starting with 'z' and ending
#    with 'p'. Return a string where for all such words, the middle letter is gone, so "zipXzap" yields "zpXzp".
#
#######################################################################################################################
#   
#   zipZap("zipXzap") â†’ "zpXzp"
#   zipZap("zopzop") â†’ "zpzp"
#   zipZap("zzzopzop") â†’ "zzzpzp"
#   zipZap("zibzap") → "zibzp"
#   zipZap("zip") → "zp"
#   zipZap("zi") → "zi"-
#   zipZap("z") → "z"-
#   zipZap("") → ""
#   zipZap("zzp") → "zp"
#   zipZap("abcppp") → "abcppp"-
#   zipZap("azbcppp") → "azbcppp"-
#   zipZap("azbcpzpp") → "azbcpzp"
#   
#######################################################################################################################
