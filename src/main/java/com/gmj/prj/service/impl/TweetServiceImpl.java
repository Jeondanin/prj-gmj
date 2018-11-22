package com.gmj.prj.service.impl;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.synth.SynthSeparatorUI;

import org.springframework.stereotype.Service;

import com.gmj.prj.service.TweetService;

import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.TweetEntity;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;
import twitter4j.conf.ConfigurationBuilder;
@Service
public class TweetServiceImpl implements TweetService {

	@Override
	public List<Status> getTweet(HttpServletRequest request) throws IOException, TwitterException {
		List<Status> list = new ArrayList<Status>();
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
			list.add(status);
		}
		
		return list;
		}

}
