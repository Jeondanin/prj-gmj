package com.gmj.prj.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.GmjBookService;
import com.gmj.prj.vo.GmjBook;

@Controller
public class GmjBookController {
	@Autowired
	private GmjBookService gbks;
	
	@GetMapping(value="/gmjbook")
	public @ResponseBody List<GmjBook> getBookList() {
		return gbks.getBookList();
	}
	@GetMapping(value="/gmjbook/{gmjbookno}")
	public @ResponseBody GmjBook selectbook(@PathVariable int gmjbookno) {
		return gbks.selectbook(gmjbookno);
	}
	@DeleteMapping(value="/gmjbookDelete/{gmjbookno}")
	public @ResponseBody int GmjBookDelete(@PathVariable int gmjbookno) {
		return gbks.GmjBookDelete(gmjbookno);
	}
	@PutMapping(value="/gmjbookUpdate")
	public @ResponseBody int updateGmjBook(@RequestBody GmjBook gb) {
		return gbks.updateGmjBook(gb);
	}

}
