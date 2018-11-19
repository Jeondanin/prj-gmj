package com.gmj.prj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjCboard;
import com.gmj.prj.vo.GmjPageInfo;

public interface GmjCboardService {
	public List<GmjCboard> getList();
	public List<GmjCboard> getList(HttpServletRequest req);
	public int insertCboard(GmjCboard gc,HttpServletRequest req);
	public GmjCboard getOne(int gmjcboardno);
	public GmjPageInfo getPageInfo();
	public int insertreply(HashMap<String, String> reply);
	public List<Map<String,String>> getreply(int gmjcboardno);
}


