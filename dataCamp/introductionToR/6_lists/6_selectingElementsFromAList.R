# Selecting elements from a list

#################################################################################################################
#																												
#	Your list will often be built out of numerous elements and components. Therefore, getting a single element,		 
#	multiple elements, or a component out of it is not always straightforward.									
#																												
#	One way to select a component is using the numbered position of that component. For example,				
#	to “grab” the first component of shining_list you type														
#																												
#	shining_list[[1]]																							
#																													
#	A quick way to check this out is typing it in the console. Important to remember: to select elements out of	 
#	a data set you use square brackets [ ], do not mix them up!													
#																												
#	Another way to check is to refer to the names of the components.											
#																												
#	shining_list[["reviews"]]																					
#																												
#	selects the reviews data frame. The same is true for the shorter version shining_list$reviews,				
#	that uses the $-sign.																						
#																												
#	Besides selecting components, you often need to select specific elements out of these components.			
#	For example, with shining_list[[2]][1] you select from the second component, actors (shining_list[[2]]),	
#	the first element ([1]). When you type this in the console, you will see the answer is Jack Nicholson.		
#																												
#################################################################################################################

# 'shining_list' is already pre-loaded in the workspace

# Define 'last_actor'
last_actor <- shining_list[[2]][5]

# Define 'second_review'
second_review <- shining_list[[3]][2,]
