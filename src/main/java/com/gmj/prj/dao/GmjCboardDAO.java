package com.gmj.prj.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjCboard;

public interface GmjCboardDAO {
	public List<GmjCboard> getList();
	public List<GmjCboard> getList(HttpServletRequest req);
	public int insertCboard(GmjCboard gc);
}
