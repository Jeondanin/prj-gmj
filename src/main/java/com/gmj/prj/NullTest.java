package com.gmj.prj;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;



public class NullTest {
	private static final Logger logger = LoggerFactory.getLogger(NullTest.class);
	public static void main(String[] args) {

		String test=null;

		if(test.equals("test")) {

		logger.info("test => {}",test);

		}

		}
}
