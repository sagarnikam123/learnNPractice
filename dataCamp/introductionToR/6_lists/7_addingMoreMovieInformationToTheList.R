# Adding more movie information to the list

#########################################################################################################################
#																														
#	Being proud of your first list, you shared it with the members of your movie hobby club. However, one of the		
#	senior members, a guy named M. McDowell, noted that you forgot to add the release year. Given your ambitions 		
#	to become next year's president of the club, you decide to add this information to the list.						
#																														
#	In order to conveniently add elements to lists you use the concatenate function c():								
#																														
#	c(list1 , some_variable)																							
#																														
#	This will simply extend the original list, list1, with the component some_variable. This component gets appended	 
#	to the end of the list. If you want to give the new list item a name, you just add the name as you did before:		
#																														
#	c(list1, new_name = some_variable)																					
#																														
#########################################################################################################################

# 'shining_list', the list containing moviename, actors and reviews, is pre-loaded in the workspace

# We forgot something; add the year to shining_list
shining_list_full <- c(shining_list,"year"=1980)

# Have a look at shining_list_full
str(shining_list_full)
