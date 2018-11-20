
package com.gmj.prj.controller;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gmj.prj.dao.BoardInfoDAO;
import com.gmj.prj.dao.impl.BoardInfoDAOImpl;
import com.gmj.prj.service.GmjCboardService;
import com.gmj.prj.vo.BoardInfo;
import com.gmj.prj.vo.GmjCboard;
import com.gmj.prj.vo.GmjPageInfo;
import com.gmj.prj.vo.GmjReply;





@Controller
public class CBoardController {

	@Autowired
	private BoardInfoDAO bad;
	@Autowired
	private GmjCboardService gcs;
	@PostMapping(value="/gmjcboard")
	public String insertCboard(@ModelAttribute GmjCboard gc,HttpServletRequest req){
		System.out.println(gc);
		int a = gcs.insertCboard(gc,req);
		return "redirect:/uri/prj/user/community";
	}
	
	
	@GetMapping(value="/gmjcboard")
	public @ResponseBody List<GmjCboard> getList(){
		return gcs.getList();
	}
	@GetMapping(value="/gmjcboarduser")
	public @ResponseBody List<GmjCboard> getList(HttpServletRequest req){
		return gcs.getList(req);
	}
	
	@GetMapping(value="/gmjcboardcnt")
	public @ResponseBody GmjPageInfo cntList(){
		return gcs.getPageInfo();
	}

	@GetMapping(value="/gmjcboard/{gmjcboardno}")
	public @ResponseBody GmjCboard getOne(@PathVariable int gmjcboardno){
		return gcs.getOne(gmjcboardno);
	}
	
	//댓글
	@PostMapping(value="/gmjreply")
	public @ResponseBody int insertReply(@RequestBody HashMap<String, String> reply) {
		return gcs.insertreply(reply);
	}
	@GetMapping(value="/gmjreply/{gmjcboardno}")
	public @ResponseBody List<GmjReply> getreply(@PathVariable int gmjcboardno){
		return gcs.getreply(gmjcboardno);
	}
		
	@GetMapping(value="/gmjreply")
	public @ResponseBody List<GmjReply> getreplyadmin(){
		return gcs.getreplyadmin();
	}
	@DeleteMapping(value="/gmjreply/{gmjreplyno}")
	public @ResponseBody int deleteReply(@PathVariable int gmjreplyno) {
		return gcs.deleteReply(gmjreplyno);
	}
	
}

