package com.gmj.prj.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmj.prj.dao.GmjBookDAO;
import com.gmj.prj.service.GmjBookService;
import com.gmj.prj.vo.GmjBook;

@Service
public class GmjBookServiceImpl implements GmjBookService {

	@Autowired
	private GmjBookDAO gbkdao;
	
	@Override
	public List<GmjBook> getBookList() {
		return gbkdao.getBookList();
	}

	@Override
	public GmjBook selectbook(int gmjbookno) {
		// TODO Auto-generated method stub
		return gbkdao.selectBook(gmjbookno);
	}

	@Override
	public int GmjBookDelete(int gmjbookno) {
		// TODO Auto-generated method stub
		return gbkdao.GmjBookDelete(gmjbookno);
	}

	@Override
	public int updateGmjBook(GmjBook gb) {
		// TODO Auto-generated method stub
		return gbkdao.updateGmjBook(gb);
	}

}
