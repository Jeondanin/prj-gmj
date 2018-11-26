package com.gmj.prj.dao;

import java.util.List;

import com.gmj.prj.vo.GmjBook;

public interface GmjBookDAO {
	
	public List<GmjBook> getBookList();
	public GmjBook selectBook(int gmjbookno);
	public int GmjBookDelete(int gmjbookno);
	public int updateGmjBook(GmjBook gb);

}
