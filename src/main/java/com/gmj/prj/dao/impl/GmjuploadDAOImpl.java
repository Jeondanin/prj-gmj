package com.gmj.prj.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjUploadDAO;
import com.gmj.prj.vo.GmjUpload;
@Repository
public class GmjuploadDAOImpl implements GmjUploadDAO {
	@Autowired
	private SqlSession ss;
	@Override
	public int uploadFile(GmjUpload gu) {
		// TODO Auto-generated method stub
		return ss.insert("com.gmj.prj.vo.GmjUpload.insertData", gu);
	}

}
