
package com.gmj.prj.controller;

import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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





@Controller
public class CBoardController {

	@Autowired
	private BoardInfoDAO bad;
	@Autowired
	private GmjCboardService gcs;
	@PostMapping(value="/gmjcboard")
	public @ResponseBody int insertCboard(@ModelAttribute GmjCboard gc,HttpServletRequest req){
		System.out.println(gc);
	
		
		return gcs.insertCboard(gc,req);
	}
	
	
	@GetMapping(value="/gmjcboard")
	public @ResponseBody List<GmjCboard> getList(){
		return gcs.getList();
	}
		
}

