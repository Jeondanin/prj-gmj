package com.gmj.prj.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.GmjCommentService;
import com.gmj.prj.vo.GmjReply;

@Controller
public class CommentController {
	private static final Logger logger = LoggerFactory.getLogger(ClientController.class);
	@Autowired
	private GmjCommentService gcms;
	
	@GetMapping(value="/gmjComment")
	public @ResponseBody List<GmjReply> getCommentList() {
		return gcms.getCommentList();
	}
	@GetMapping(value="/gmjComment/{gmjcommentno}")
	public @ResponseBody GmjReply getComment(@PathVariable int gmjcommentno) {
		return gcms.getComment(gmjcommentno);
	}
	@DeleteMapping(value="/gmjCommentDelete/{gmjcommentno}")
	public @ResponseBody int deletegmjComment(@PathVariable int gmjcommentno) {
		return gcms.deletegmjComment(gmjcommentno);
	}
	@PutMapping(value="/gmjCommentUpdate")
	public @ResponseBody int updategmjComment(@RequestBody GmjReply gc) {
		return gcms.updategmjCommnet(gc);
	}

}
