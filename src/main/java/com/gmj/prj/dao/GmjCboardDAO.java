package com.gmj.prj.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjCboard;

public interface GmjCboardDAO {
	public List<GmjCboard> getList();
	public List<GmjCboard> getList(HttpServletRequest req);
	public int insertCboard(GmjCboard gc);
	public GmjCboard getOne(int gmjcboardno);
	
	public int insertReply(HashMap<String, String> reply);
	public List<Map<String, String>> getReply(int gmjcboardno); 
}
