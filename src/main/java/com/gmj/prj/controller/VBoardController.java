package com.gmj.prj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.GmjVboardService;
import com.gmj.prj.vo.GmjPageInfo;
import com.gmj.prj.vo.GmjReply;
import com.gmj.prj.vo.GmjVboard;


@Controller
public class VBoardController {
	@Autowired
	private GmjVboardService gvs;
	@GetMapping(value="/gmjvboard")
	public @ResponseBody List<GmjVboard> getList(){
		return gvs.getList();
	}
	@GetMapping(value="/gmjvboarduser")
	public @ResponseBody List<GmjVboard> getList(HttpServletRequest req){
		return gvs.getList(req);
	}
	@GetMapping(value="/gmjvboardcnt")
	public @ResponseBody GmjPageInfo cntList(){
		return gvs.getPageInfo();
	}
	@GetMapping(value="/gmjvboard/{gmjvboardno}")
	public @ResponseBody GmjVboard getOne(@PathVariable int gmjvboardno){
		return gvs.getOne(gmjvboardno);
	}
	@GetMapping(value="/gmjvreply/{gmjvboardno}")
	public @ResponseBody List<GmjReply> getreply(@PathVariable int gmjvboardno){
		return gvs.getreply(gmjvboardno);
	}

}
