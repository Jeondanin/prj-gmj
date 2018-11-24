package com.gmj.prj.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gmj.prj.dao.GmjBookDAO;
import com.gmj.prj.vo.GmjBook;

@Repository
public class GmjBookDAOImpl implements GmjBookDAO {

	@Autowired
	private SqlSession ss;
	@Override
	public List<GmjBook> getBookList() {
		// TODO Auto-generated method stub
		return ss.selectList("com.gmj.prj.GmjBook.selectBookList");
	}
	@Override
	public GmjBook selectBook(int gmjbookno) {
		// TODO Auto-generated method stub
		return ss.selectOne("com.gmj.prj.GmjBook.selectBook", gmjbookno);
	}
	@Override
	public int GmjBookDelete(int gmjbookno) {
		// TODO Auto-generated method stub
		return ss.delete("com.gmj.prj.GmjBook.deleteGmjBook",gmjbookno);
	}
	@Override
	public int updateGmjBook(GmjBook gb) {
		// TODO Auto-generated method stub
		return ss.update("com.gmj.prj.GmjBook.updateGmjBook",gb);
	}
	
}
