package com.gmj.prj.dao;

import java.util.List;

import com.gmj.prj.vo.GmjCboard;

public interface GmjCboardDAO {
	public List<GmjCboard> getList();
	public int insertCboard(GmjCboard gc);
}
