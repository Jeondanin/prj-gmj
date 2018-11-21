package com.gmj.prj.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjPageInfoDAO;
import com.gmj.prj.vo.GmjPageInfo;
@Repository
public class GmjPageInfoDAOImpl implements GmjPageInfoDAO {
	@Autowired
	private SqlSession ss;
	@Override
	public GmjPageInfo getPageInfo(String boardtype){
		GmjPageInfo gpi = new GmjPageInfo();
		int totalCnt = ss.selectOne("com.gmj.prj.vo.GmjPageInfo.getTotalCnt",boardtype);
		gpi.setTotalCnt(totalCnt);
		gpi.pageCount();
		return gpi;
	}

}
