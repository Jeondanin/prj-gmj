package com.gmj.prj.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjVboard;

public interface GmjVboardDAO {
	public List<GmjVboard> getList();
	public List<GmjVboard> getList(HttpServletRequest req);
	public GmjVboard getOne(int gmjvboardno);
}
