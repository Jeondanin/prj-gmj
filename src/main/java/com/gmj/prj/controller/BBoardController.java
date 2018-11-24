package com.gmj.prj.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.GmjBboardService;
import com.gmj.prj.vo.GmjBboard;

import com.gmj.prj.vo.GmjPageInfo;

@Controller
public class BBoardController {
	
	@Autowired
	private GmjBboardService gbs;
	
	@GetMapping(value="/gmjbboard")
	public @ResponseBody List<GmjBboard> getBboardList() {
		return gbs.getBboardList();
	}
	//유저쪽 리스트 뽑는 곳. 
		@GetMapping(value="/gmjbboarduser")
		public @ResponseBody List<GmjBboard> getList(HttpServletRequest req){
			return gbs.getBboardList(req);
		}
	@GetMapping(value="/gmjbboard/{gmjbboardno}")
	public @ResponseBody GmjBboard selectBboard(@PathVariable int gmjbboardno) {
		return gbs.selectBboard(gmjbboardno);
	}
	@GetMapping(value="/gmjbboardcnt")
	public @ResponseBody GmjPageInfo cntList(){
		return gbs.getPageInfo();
	}
	
	@PutMapping(value="/gmjbboard")
	public @ResponseBody int updateBboard(@RequestBody GmjBboard gb) {
		return gbs.updateBboard(gb);
	}
	@DeleteMapping(value="/gmjbboardDelte/{gmjbboardno}")
	public @ResponseBody int deleteBboard(@PathVariable int gmjbboardno) {
		return gbs.deleteBboard(gmjbboardno);
	}
	@GetMapping(value="/gmjbboardorder/{gmjbboardno}")
	public @ResponseBody int getOrder(@PathVariable int gmjbboardno) {
		return gbs.getOrder(gmjbboardno);
	}

}
