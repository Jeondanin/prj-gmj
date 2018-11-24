package com.gmj.prj.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjBboard;
import com.gmj.prj.vo.GmjPageInfo;

public interface GmjBboardService {
	
	public List<GmjBboard> getBboardList();
	public List<GmjBboard> getBboardList(HttpServletRequest req);
	public GmjBboard selectBboard(int gmjbboardno);
	public GmjPageInfo getPageInfo();
	public int updateBboard(GmjBboard gb);
	public int deleteBboard(int gmjbboardno);
	public int getOrder(int gmjbboardno);

}
