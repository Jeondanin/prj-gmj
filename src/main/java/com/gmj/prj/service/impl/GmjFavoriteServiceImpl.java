package com.gmj.prj.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.aop.AspectLogger;
import com.gmj.prj.dao.impl.GmjFavoriteDAOImpl;
import com.gmj.prj.service.GmjFavoriteService;
import com.gmj.prj.vo.GmjFavorite;


@Service
public class GmjFavoriteServiceImpl implements GmjFavoriteService{
	private static final Logger logger = LoggerFactory.getLogger(GmjFavoriteServiceImpl.class);
	@Autowired
	public GmjFavoriteDAOImpl gfdi;
	@Override
	public int insertFavorite(GmjFavorite gf) {
		
		return gfdi.insertFavorite(gf);
	}

}
