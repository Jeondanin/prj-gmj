package com.gmj.prj.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjFavoriteDAO;
import com.gmj.prj.vo.GmjFavorite;


@Repository
public class GmjFavoriteDAOImpl implements GmjFavoriteDAO {
	@Autowired
	public SqlSession ss;
	@Override
	public int insertFavorite(GmjFavorite gf) {
		ss.update("com.gmj.prj.vo.GmjFavorite.updateFavoriteCnt",gf);
		 int a = ss.insert("com.gmj.prj.vo.GmjFavorite.insertFavorite",gf);
		 System.out.println(a);
		return a;
	}

}

