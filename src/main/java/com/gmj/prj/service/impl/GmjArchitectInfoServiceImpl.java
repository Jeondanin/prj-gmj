package com.gmj.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.impl.GmjArchitectInfoDAOImpl;
import com.gmj.prj.service.GmjArchitectInfoService;
import com.gmj.prj.vo.GmjArchitectInfo;


@Service
public class GmjArchitectInfoServiceImpl implements GmjArchitectInfoService {
	@Autowired
	private GmjArchitectInfoDAOImpl gaidi;
	@Override
	public List<GmjArchitectInfo> getList(String gmjArchitectName) {
		return gaidi.getList(gmjArchitectName);
	}
	@Override
	public GmjArchitectInfo checkAddress(String gmjArchitectBAddress) {
		// TODO Auto-generated method stub
		return gaidi.checkAddress(gmjArchitectBAddress);
	}

}
