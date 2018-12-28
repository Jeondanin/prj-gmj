package com.gmj.prj.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;


import com.gmj.prj.vo.GmjPageInfo;
import com.gmj.prj.vo.GmjReply;
import com.gmj.prj.vo.GmjVboard;

public interface GmjVboardService {
	public List<GmjVboard> getList();
	public List<GmjVboard> getList(HttpServletRequest req);
	public GmjPageInfo getPageInfo();
	public GmjVboard getOne(int gmjvboardno);
	public List<GmjReply> getreply(int gmjvboardno);
}
