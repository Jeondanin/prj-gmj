
package com.gmj.prj.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.dao.BoardInfoDAO;
import com.gmj.prj.dao.impl.BoardInfoDAOImpl;
import com.gmj.prj.vo.BoardInfo;





@Controller
public class BoardController {

	@Autowired
	private BoardInfoDAO bad;
	@GetMapping(value="/board")
	public @ResponseBody BoardInfo getBoardCnt() {
		return bad.gettotalcnt();
	}
	@GetMapping(value="/uri/prj/comment/{num}")
	public @ResponseBody Map<String,Object> getBoardInfo(@PathVariable int num) {
		return bad.getBoardInfo(num);
	}
		
}

