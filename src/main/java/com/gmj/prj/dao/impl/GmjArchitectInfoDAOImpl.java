package com.gmj.prj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjArchitectInfoDAO;
import com.gmj.prj.vo.GmjArchitectInfo;


@Repository
public class GmjArchitectInfoDAOImpl implements GmjArchitectInfoDAO {
	@Autowired
	public SqlSession ss;
	@Override
	public List<GmjArchitectInfo> getList(String gmjarchitectname) {
		
		return ss.selectList("com.bdi.sp.vo.GmjArchitectInfo.selectList",gmjarchitectname);
	}
	@Override
	public GmjArchitectInfo checkAddress(String gmjArchitectBAddress) {
		// TODO Auto-generated method stub
		return ss.selectOne("com.bdi.sp.vo.GmjArchitectInfo.checkAddress",gmjArchitectBAddress);
	}

}
