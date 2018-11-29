package com.gmj.prj.service;

import java.util.List;

import com.gmj.prj.vo.GmjArchitectInfo;


public interface GmjArchitectInfoService {
	public List<GmjArchitectInfo> getList(String gmjArchitectName);
	public List<GmjArchitectInfo> getLandmark();
	public GmjArchitectInfo checkAddress(String gmjArchitectBAddress);
	
	public List<GmjArchitectInfo> getgmjMapList();



}
