package com.gmj.prj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.dao.GmjPageInfoDAO;
import com.gmj.prj.vo.GmjCboard;
import com.gmj.prj.vo.GmjPageInfo;

@Controller
public class Test {
	@Autowired
	private GmjPageInfoDAO gpid;
	@GetMapping(value="/gmjcboardz")
	public @ResponseBody GmjPageInfo getList(){
		return gpid.getPageInfo("test");
	}

}
