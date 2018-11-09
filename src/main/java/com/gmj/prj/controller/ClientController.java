package com.gmj.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.impl.GmjClientServiceImpl;
import com.gmj.prj.vo.GmjClient;
import com.gmj.prj.vo.GmjFavorite;

@Controller
public class ClientController {
	@Autowired
	GmjClientServiceImpl gcsi;
	@PostMapping(value="/gmjclient")
	public @ResponseBody int checkAddress(@RequestBody GmjClient gc) {
		System.out.println(gc);
		return gcsi.insertClient(gc);
	}
}
