package com.gmj.prj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gmj.prj.dao.GmjArchitectInfoDAO;
import com.gmj.prj.vo.GmjArchitectInfo;


@Component
public class GmjArchitectInfoDAOImpl implements GmjArchitectInfoDAO {
	@Autowired
	public SqlSession ss;
	@Override
	public List<GmjArchitectInfo> getList(String gmjarchitectname) {
		
		return ss.selectList("com.gmj.prj.vo.GmjArchitectInfo.selectList",gmjarchitectname);
	}
	@Override
	public GmjArchitectInfo checkAddress(String gmjArchitectBAddress) {
		// TODO Auto-generated method stub
		return ss.selectOne("com..gmj.prj.GmjArchitectInfo.checkAddress",gmjArchitectBAddress);
	}

}
