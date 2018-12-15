package com.gmj.prj.service;

import java.util.List;

import com.gmj.prj.vo.GmjArchitectInfo;

public interface GmjMapService {
	
	public List<GmjArchitectInfo> getgmjMapList();
	public int deleteGmjMap(int gmjArchitectNo);
	public int updateGmjMap(GmjArchitectInfo ga);

}
