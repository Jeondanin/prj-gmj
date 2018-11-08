package com.gmj.prj.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.gmj.prj.dao.GmjFavoriteDAO;
import com.gmj.prj.vo.GmjFavorite;


@Component
public class GmjFavoriteDAOImpl implements GmjFavoriteDAO {
	@Autowired
	public SqlSession ss;
	@Override
	public int insertFavorite(GmjFavorite gf) {
		
		return ss.insert("com.bdi.sp.vo.GmjFavorite.insertFavorite",gf);
	}

}
