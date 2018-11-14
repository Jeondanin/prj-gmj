package com.gmj.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.GmjCboardDAO;
import com.gmj.prj.dao.GmjPageInfoDAO;
import com.gmj.prj.service.GmjCboardService;
import com.gmj.prj.vo.GmjCboard;
@Service
public class GmjCboardServiceImpl implements GmjCboardService {
	@Autowired
	private GmjCboardDAO gcsd;
	@Autowired
	private GmjPageInfoDAO gpid;
	@Override
	public List<GmjCboard> getList() {
		
		//페이지 정보를 불러와서 변수로 넣는다.
		gpid.getPageInfo();
		
		return gcsd.getList();
	}

}
