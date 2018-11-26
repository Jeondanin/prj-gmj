package com.gmj.prj.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.GmjPageInfoDAO;
import com.gmj.prj.dao.GmjVboardDAO;
import com.gmj.prj.service.GmjVboardService;
import com.gmj.prj.vo.GmjPageInfo;
import com.gmj.prj.vo.GmjVboard;
@Service
public class GmjVboardServiceImpl implements GmjVboardService {
	@Autowired
	private GmjVboardDAO gvd;
	@Autowired
	private GmjPageInfoDAO gpid;
	@Override
	public List<GmjVboard> getList() {
		
		return gvd.getList();
	}
	@Override
	public GmjPageInfo getPageInfo() {
		// TODO Auto-generated method stub
		return gpid.getPageInfo("gmjvboard");
	}
	@Override
	public List<GmjVboard> getList(HttpServletRequest req) {
		// TODO Auto-generated method stub
		return gvd.getList(req);
	}
	@Override
	public GmjVboard getOne(int gmjvboardno) {
		// TODO Auto-generated method stub
		return gvd.getOne(gmjvboardno);
	}

}
