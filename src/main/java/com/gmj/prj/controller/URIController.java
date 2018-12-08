package com.gmj.prj.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class URIController {

	private static final Logger logger = LoggerFactory.getLogger(URIController.class);
	

	@RequestMapping(value="/uri/prj/user/**",method=RequestMethod.GET)
	public String goPage(HttpServletRequest req) {
		HttpSession hs= req.getSession();
		String rootPath = req.getContextPath(); 
		String uri = req.getRequestURI();
		String uricheck = uri.substring(uri.lastIndexOf("/")+1, uri.length());
		logger.debug("너의 뒷주소는 이것이다. {}",uricheck);
		if(uricheck.equals("status")) {
			if(hs.getAttribute("userNO")!=null) {
				return req.getRequestURI().replace(rootPath+"/uri/","");
			}else {
				return "redirect:../user/home";
			}
		}
		
		return req.getRequestURI().replace(rootPath+"/uri/","");
	}
	@RequestMapping(value="/uri/prj/admin/**",method=RequestMethod.GET)
	public String goadminPage(HttpServletRequest req) {
		
		String rootPath = req.getContextPath(); 

		String uri = req.getRequestURI();
		HttpSession hs= req.getSession();
		logger.debug("name=>{}", rootPath);
		if(hs.getAttribute("authority")!=null) {
			boolean authority =(boolean)hs.getAttribute("authority");
			if(authority) {
				System.out.println("권한확인했다.");
				return req.getRequestURI().replace(rootPath+"/uri/","");
			}else {
				System.out.println("권한확인 결과 fail했다.");
				return "redirect:../user/home";
			}
		}else{
			System.out.println("권한자체가 없다.");
			return "redirect:../user/home";
		}
	}
	
	@RequestMapping(value="/uri/**",method=RequestMethod.POST)
	public String goPage3(HttpServletRequest req) throws UnsupportedEncodingException {
		
		
		 
		try {
			String name = new String(req.getParameter("title").getBytes("8859_1"),"utf-8");
			System.out.println(name);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		
		System.out.println(req.getParameter("content"));
		System.out.println(req.getParameter("userfile"));
		MultipartHttpServletRequest multireq = (MultipartHttpServletRequest) req;
		Iterator<String> iterator =multireq.getFileNames();
		MultipartFile mf = null;
		while(iterator.hasNext()) {
			mf = multireq.getFile(iterator.next());
			System.out.println("-----start-----");
			System.out.println("name:"+mf.getName());
			String orginname = new String(mf.getOriginalFilename().getBytes("8859_1"),"utf-8");
			System.out.println("Origanalname:"+orginname);
			
			System.out.println("size:"+mf.getSize());
			System.out.println("-----end-----");

		}
		
		
		String rootPath = req.getContextPath(); 
		System.out.println(req);
		String uri = req.getRequestURI();
		System.out.println(uri);
		return req.getRequestURI().replace(rootPath+"/uri","");
		
		
	}


}   