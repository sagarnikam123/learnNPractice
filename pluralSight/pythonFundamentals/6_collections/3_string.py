# String

################################################################################
# homogeneous immutable sequence of unicode codepoints(characters)

len('llanfairpwllgwyngyllgogerychwyrndrobwllllantysiliogogogoch')
# concatenate using '+' operator
"New" + "found" + "land"

# += operator re-binds the reference to a new object
# use of sparingly - concatenation
# with '+' or '+=' can cause performance degradation
s = "New"
s += "found"
s += "land"

# join on separate strings
colors = ';'.join( ['#45ff23', '#2321fa', '#1298a3', '#a32312'] )
colors
# split() to divide into list
colors.split(';')
''.join( ['high', 'way', 'man'] )

# using partition()
"unforgetable".partition("forget")
departure, separator, arrival = "London:Edinburgh".partition(':')
departure
arrival
separator

# use '_' (underscore) for dummy name/variable/unused values
origin, _ , destination = 'Seattle-Boston'.partition('-')
origin
destination

# format() to insert values into string
# replacement fields delimited by '{}'
"The age of {0} is {1}".format('Jim', 32)
# integer field names match with positional arguments
"The age of {0} is {1}. {0}'s birthday is on {2}".format('Fred', 24, 'October 31')
# field names can be omitted if used in sequence
"Reticulating spline {} of {}.".format(4, 23)
# named fields are matched with keyword arguments
"Current position  {latitude} {longitude} ".format( latitude="60N",
                                                    longitude="5E")
# access values through keys or indexes with square brackets
# in the replacement fields
pos = (65.2, 23.1, 82.2)
"Galactic position x={pos[0]} y={pos[1]} z={pos[2]} ".format(pos=pos)
# access attributes using dot in the replacement field
"Math constants: pi={m.pi} e={m.e} ".format(m=math)
"Math constants: pi={m.pi:.3f} e={m.e:.3f} ".format(m=math)

################################################################################
