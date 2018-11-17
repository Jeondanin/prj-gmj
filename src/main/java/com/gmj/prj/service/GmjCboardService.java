package com.gmj.prj.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjCboard;
import com.gmj.prj.vo.GmjPageInfo;

public interface GmjCboardService {
	public List<GmjCboard> getList();
	public List<GmjCboard> getList(HttpServletRequest req);
	public int insertCboard(GmjCboard gc,HttpServletRequest req);
	
	public GmjPageInfo getPageInfo();
}


