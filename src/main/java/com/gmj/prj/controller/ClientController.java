package com.gmj.prj.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.GmjClientService;
import com.gmj.prj.service.impl.GmjClientServiceImpl;
import com.gmj.prj.vo.GmjClient;
import com.gmj.prj.vo.GmjFavorite;

@Controller
public class ClientController {
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	@Autowired
	GmjClientService gcs;
	@GetMapping(value="/gmjclient")
	public @ResponseBody List<GmjClient> getClientList() {	
		return gcs.getClientList();
	}
	@PutMapping(value="/gmjclient")
	public @ResponseBody int getClientList(@RequestBody GmjClient gc) {
		return gcs.updateClient(gc);
	}
	@PostMapping(value="/gmjclient")
	public @ResponseBody int checkAddress(@RequestBody GmjClient gc) {
		System.out.println(gc);
		return gcs.insertClient(gc);
	}
}
