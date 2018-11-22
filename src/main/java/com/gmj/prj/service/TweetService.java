package com.gmj.prj.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;

public interface TweetService {
	public List<Status> getTweet(HttpServletRequest request) throws IOException, TwitterException;
}
