package com.gmj.prj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjCboard;
import com.gmj.prj.vo.GmjPageInfo;
import com.gmj.prj.vo.GmjReply;

public interface GmjCboardService {
	public List<GmjCboard> getList();
	public List<GmjCboard> getList(HttpServletRequest req);
	public int insertCboard(GmjCboard gc,HttpServletRequest req);
	public GmjCboard getOne(int gmjcboardno);
	public GmjPageInfo getPageInfo();
	public int updateCboardList(List<GmjCboard> listcb);
	
	public int insertreply(HashMap<String, String> reply);
	public List<GmjReply> getreply(int gmjcboardno);
	public List<GmjReply> getreplyadmin();
	public int deleteReply(int gmjreplyno);
	public int getOrder(int gmjcboardno);
}

