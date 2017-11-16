/*
 * Requires your credentials
 * 
 * */

package problem;

import java.util.List;
import java.util.Scanner;

import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;

public class Twitter {

	public static void main(String[] args) {
		
		Scanner firstLoop = new Scanner(System.in);
		String queryHashTag = "#"+firstLoop.nextLine();
		
		//making twitter instance
	    Twitter twitter = TwitterFactory.getSingleton();
		
		//credentials
		AccessToken accessToken = new AccessToken("Your-Access-Token", "Your-Access-Token-Secret");
	    twitter.setOAuthConsumer("Consumer-Key", "Consumer-Key-Secret");
	    twitter.setOAuthAccessToken(accessToken);


	    try {
	    	// querying HashTag
	        Query query = new Query(queryHashTag);
	        QueryResult result;
	        result = twitter.search(query);
	        List<Status> tweets = result.getTweets();
	        
	        // printing 20 tweets
	        for (int i=0;i<20;i++) {
	            System.out.println("@" + tweets.getUser().getScreenName() + " - " + tweets.getText());
	        }
	    }
	    catch (TwitterException te) {
	        te.printStackTrace();
	        System.out.println("Failed to search tweets: " + te.getMessage());
	        System.exit(-1);
	    }

	}

	private void setOAuthConsumer(String string, String string2) {
		// TODO Auto-generated method stub
		
	}

}
