package com.gmj.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.GmjLoginService;
import com.gmj.prj.vo.GmjArchitectInfo;

@Controller
public class LoginController {
	@Autowired
	private GmjLoginService gls;
	@GetMapping(value="/login")
	public @ResponseBody int login() {
		return gls.login();
	}
}
