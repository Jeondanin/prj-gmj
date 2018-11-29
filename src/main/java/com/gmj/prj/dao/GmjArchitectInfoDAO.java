package com.gmj.prj.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.gmj.prj.vo.GmjArchitectInfo;



public interface GmjArchitectInfoDAO {
	public List<GmjArchitectInfo> getList(String gmjarchitectname);
	public List<GmjArchitectInfo> getLandmark();
	public GmjArchitectInfo checkAddress(String gmjArchitectBAddress);
	public List<GmjArchitectInfo> getgmjMapList();

	
}
