package com.gmj.prj.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.TweetService;

import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;

@Controller
public class TweetController {
	@Autowired
	private TweetService ts;
	@GetMapping(value="/tweets")
	public @ResponseBody List<Status> getTweet(HttpServletRequest request) throws IOException, TwitterException {
		return ts.getTweet(request);
	} 
}
