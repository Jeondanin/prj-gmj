package com.gmj.prj.service;

import java.util.List;

import com.gmj.prj.vo.GmjBook;

public interface GmjBookService {
	
	public List<GmjBook> getBookList();
	public GmjBook selectbook(int gmjbookno);
	public int GmjBookDelete(int gmjbookno);
	public int updateGmjBook(GmjBook gb);

}
