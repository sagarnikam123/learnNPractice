# Time Conversion

#######################################################################################################################
#	
#	Given a time in AM/PM format, convert it to military (24-hour) time.
#	
#	Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM 
#	on a 12-hour clock, and 12:00:00 on a 24-hour clock.
#	
#	Input Format
#	A single string containing a time in 12-hour clock format (i.e.hh:mm:ss AM or hh:mm:ss PM), where 01 <= hh <= 12
#	
#	Output Format
#	Convert and print the given time in 24-hour format, where 00 <= hh <= 23.
#	
#	Sample Input
#	07:05:45PM
#
#	Sample Output
#	19:05:45
#	
#######################################################################################################################

#!/bin/python3

import sys

time = input().strip()
