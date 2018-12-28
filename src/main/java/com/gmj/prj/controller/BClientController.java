package com.gmj.prj.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.GmjBClientService;
import com.gmj.prj.vo.GmjBClient;
import com.gmj.prj.vo.GmjClient;

@Controller
public class BClientController {
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	@Autowired
	private GmjBClientService gbcs;
	
	@GetMapping(value="/gmjbclient")
	public @ResponseBody List<GmjBClient> getBClientList() {
		return gbcs.getBClientList();
	}
	@GetMapping(value="/gmjbclient/{gmjbclientno}")
	public @ResponseBody GmjBClient getBClient(@PathVariable int gmjbclientno) {
		return gbcs.getBClient(gmjbclientno);
	}
	@PostMapping(value="/gmjbclient")
	public @ResponseBody int insertBClient(@RequestBody GmjClient gbc) {
		logger.debug("{}",gbc.getGmjuserno());
		return gbcs.insertBClient(gbc);
	}
	@DeleteMapping(value="/gmjbclient/{gmjbclientno}")
	public @ResponseBody int deleteBClient(@PathVariable int gmjbclientno) {
		return gbcs.deleteBClient(gmjbclientno);
	}
	@PostMapping(value="/gmjbclientrecover")
	public @ResponseBody int recoverBClient(@RequestBody GmjBClient gbc) {
		
		return gbcs.recoverBClient(gbc);
	}

}
