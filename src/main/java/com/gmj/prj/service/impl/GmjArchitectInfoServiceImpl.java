package com.gmj.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.GmjArchitectInfoDAO;
import com.gmj.prj.dao.impl.GmjArchitectInfoDAOImpl;
import com.gmj.prj.service.GmjArchitectInfoService;
import com.gmj.prj.vo.GmjArchitectInfo;


@Service
public class GmjArchitectInfoServiceImpl implements GmjArchitectInfoService {
	@Autowired
	private GmjArchitectInfoDAO gaid;
	@Override
	public List<GmjArchitectInfo> getList(String gmjArchitectName) {
		return gaid.getList(gmjArchitectName);
	}
	@Override
	public List<GmjArchitectInfo> getLandmark() {
		
		return gaid.getLandmark();
	}
	@Override
	public GmjArchitectInfo checkAddress(String gmjArchitectBAddress) {
		// TODO Auto-generated method stub
		return gaid.checkAddress(gmjArchitectBAddress);
	}
	@Override
	public List<GmjArchitectInfo> getgmjMapList() {
		// TODO Auto-generated method stub
		return gaid.getgmjMapList();

	}
	

}
