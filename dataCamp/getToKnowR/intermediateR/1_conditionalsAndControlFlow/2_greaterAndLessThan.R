# Greater and less than

#################################################################################################################
#																												#
#	Apart from equality operators, Filip also introduced the less than and greater than operators. 				#
#	These relations, represented as < and > in R, can be combined with an equal sign to express an inequality.	#
#	All R expressions in the following code chunk evaluate to FALSE:											#
#																												#
#	(1 + 2) > 4																									#
#	"dog" < "Cats"																								#
#	TRUE <= FALSE																								#
#																												#
#	Remember that for string comparison, R determines the greater than relationship based on the alphabet.		#
#	Also, keep in mind that TRUE corresponds to 1 in R, while FALSE coerces to 0 behind the scenes.				#
#	Therefore, FALSE < TRUE is TRUE.																			#
#																												#
#################################################################################################################

# Comparison of numerics
-6*5+2 >= -10+1

# Comparison of character strings
"raining" <= "raining dogs"

# Comparison of logicals
TRUE > FALSE
