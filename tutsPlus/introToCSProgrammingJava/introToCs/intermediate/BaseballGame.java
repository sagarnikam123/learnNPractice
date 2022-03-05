package introToCs.intermediate;

public class BaseballGame {

	private String team1;
	private String team2;
	private static int totalGamesPlayed = 0;

	public BaseballGame(String teamOne,String teamTwo){
		team1 = teamOne;
		team2 = teamTwo;
		totalGamesPlayed++;
	}

	public static void main(String[] args) {
		BaseballGame game1 = new BaseballGame("Static Brawlers", "Instantiated kickers");
		System.out.println(BaseballGame.getTotalGamesPlayed());
		BaseballGame game2 = new BaseballGame("Blue Cats", "Red Cats");

		System.out.println(game1.getTeams());
		System.out.println(game2.getTeams());
		System.out.println(BaseballGame.getTotalGamesPlayed());


	}

	public String getTeams(){
		return "For todays game we have the"+team1+" versus the "+team2;
	}

	public static int getTotalGamesPlayed(){
		return totalGamesPlayed;
	}

}
