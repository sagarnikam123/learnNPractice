# Question 5

#######################################################################################################################
#	
#	Exactly, if Kobe has a hot hand, the probability that he makes his second shot would be higher, 
#	for example 0.60. As a result of these increased probabilities, you'd expect Kobe to have longer streaks. 
#	Compare this to the skeptical perspective where Kobe does not have a hot hand, where each shot is independent 
#	of the next. If he hits his first shot, the probability that he makes the second is still 0.45:
#	P(shot2=H | shot1=H)=0.45.
#	
#	In other words, making the first shot did nothing to effect the probability that he'd make his second shot. 
#	If Kobe's shots are independent, then he'd have the same probability of hitting every shot
#	regardless of his past shots: 45%.
#	
#	Now that we've phrased the situation in terms of independent shots, let's return to the question: 
#	how do we tell if Kobe's shooting streaks are long enough to indicate that he has hot hands? We can compare 
#	his streak lengths to someone without hot hands: an independent shooter. Starting with the next exercise, 
#	you'll learn how to simulate such an independent shooter in R.
#	
#	If Kobe's shooting streaks diverge significantly from an independent shooter's streaks, we can conclude...
#	
#######################################################################################################################

1	We can conclude that Kobe likely has a hot hand.
2	We can conclude that his shots are likely independent.
3	We cannot conclude anything.

Answer - 1	We can conclude that Kobe likely has a hot hand.