package com.gmj.prj.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.plaf.synth.SynthSeparatorUI;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.gmj.prj.dao.impl.BoardInfoDAOImpl;
import com.gmj.prj.vo.BoardInfo;





@Controller
public class BoardController {

	@Autowired
	private BoardInfoDAOImpl bai;
	@GetMapping(value="/board")
	public @ResponseBody BoardInfo getBoardCnt() {
		
		return bai.gettotalcnt();
	}
	@GetMapping(value="/uri/prj/comment/{num}")
	public @ResponseBody Map<String,Object> getBoardInfo(@PathVariable int num) {
		return bai.getBoardInfo(num);
	}
		
}
