package com.gmj.prj.dao;

import java.util.List;

import com.gmj.prj.vo.GmjArchitectInfo;

public interface GmjMapDAO {
	
	public List<GmjArchitectInfo> getgmjMapList();
	public int deleteGmjMap(int gmjarchitectno);
	public int updateGmjMap(GmjArchitectInfo ga);

}
