package com.gmj.prj.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.gmj.prj.vo.GmjCboard;

public interface GmjCboardService {
	public List<GmjCboard> getList();
	public int insertCboard(GmjCboard gc,HttpServletRequest req);
}


