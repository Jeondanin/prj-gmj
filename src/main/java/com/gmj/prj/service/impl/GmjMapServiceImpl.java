package com.gmj.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.GmjMapDAO;
import com.gmj.prj.service.GmjMapService;
import com.gmj.prj.vo.GmjArchitectInfo;

@Service
public class GmjMapServiceImpl implements GmjMapService {

	@Autowired
	private GmjMapDAO gmdao;
	@Override
	public List<GmjArchitectInfo> getgmjMapList() {
		return gmdao.getgmjMapList();
	}
	@Override
	public int deleteGmjMap(int gmjarchitectno) {
		// TODO Auto-generated method stub
		return gmdao.deleteGmjMap(gmjarchitectno);
	}
	@Override
	public int updateGmjMap(GmjArchitectInfo ga) {
		// TODO Auto-generated method stub
		return gmdao.updateGmjMap(ga);
	}

}
