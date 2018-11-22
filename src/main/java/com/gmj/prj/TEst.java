package com.gmj.prj;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

public class TEst {
	public static void main(String[] args) throws IOException, TwitterException {
		BufferedWriter bw = new BufferedWriter(new FileWriter("tweets.txt"));
		ConfigurationBuilder cb = new ConfigurationBuilder();
		cb.setDebugEnabled(true)
		.setOAuthConsumerKey("eZsUTTHWb9exFiUrOk0LGAvU4")
		.setOAuthConsumerSecret("MMteA5APBmVKtkUt6mZNoffZHIhSJ6zcwVqTt3O4NmGZuGNwgF")
		.setOAuthAccessToken("1065470676578881538-MmQNJddqWjw3htvR9HRMf6mEPjvJcM")
		.setOAuthAccessTokenSecret("pWTRLf2cg6H9hERCYkbWoGmE6P7byGziXZbd3MaN6eX2q");
		
		TwitterFactory tf = new TwitterFactory(cb.build());
		Twitter twitter = tf.getInstance();
		Query query = new Query("김중업");
		QueryResult result =null;
		result = twitter.search(query);
		for(Status status : result.getTweets()) {
			bw.write("@"+status.getUser().getScreenName()+":"+status.getText()+"|||"+status.getRetweetCount()+"\r\n");
		}
		bw.close();
	}

}
