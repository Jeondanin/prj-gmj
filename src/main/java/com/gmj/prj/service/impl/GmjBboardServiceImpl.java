package com.gmj.prj.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.GmjBboardDAO;
import com.gmj.prj.dao.GmjPageInfoDAO;
import com.gmj.prj.service.GmjBboardService;
import com.gmj.prj.vo.GmjBboard;
import com.gmj.prj.vo.GmjPageInfo;


@Service
public class GmjBboardServiceImpl implements GmjBboardService {

	@Autowired
	private GmjBboardDAO gbdao;
	@Autowired
	private GmjPageInfoDAO gpid;
	@Override
	public List<GmjBboard> getBboardList() {
		// TODO Auto-generated method stub
		return gbdao.getBboardList();
	}
	@Override
	public List<GmjBboard> getBboardList(HttpServletRequest req) {
		// TODO Auto-generated method stub
		return gbdao.getBboardList(req);
	}
	@Override
	public GmjBboard selectBboard(int gmjbboardno) {
		// TODO Auto-generated method stub
		return gbdao.selectBboard(gmjbboardno);
	}
	@Override
	public int updateBboard(GmjBboard gb) {
		// TODO Auto-generated method stub
		return gbdao.updateBboard(gb);
	}
	@Override
	public int deleteBboard(int gmjbboardno) {
		// TODO Auto-generated method stub
		return gbdao.deleteBboard(gmjbboardno);
	}
	@Override
	public int getOrder(int gmjbboardno) {
		// TODO Auto-generated method stub
		return gbdao.getOrder(gmjbboardno);
	}
	@Override
	public GmjPageInfo getPageInfo() {
		
		return gpid.getPageInfo("gmjbboard");
	}
	
	

}
