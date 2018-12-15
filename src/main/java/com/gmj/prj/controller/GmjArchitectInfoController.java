package com.gmj.prj.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gmj.prj.service.GmjArchitectInfoService;
import com.gmj.prj.service.GmjFavoriteService;
import com.gmj.prj.service.GmjMapService;
import com.gmj.prj.vo.GmjArchitectInfo;
import com.gmj.prj.vo.GmjFavorite;



@Controller
public class GmjArchitectInfoController {
	private static final Logger logger = LoggerFactory.getLogger(GmjArchitectInfoController.class);
	@Autowired
	private GmjArchitectInfoService gais;
	@Autowired
	private GmjFavoriteService gfs;
	@Autowired
	private GmjMapService gms;
	
	@GetMapping(value="/gmjlandmark/{areaname}")
	public @ResponseBody List<GmjArchitectInfo> landmarkList(@PathVariable String areaname){
		return gais.getLandmark(areaname);
	}
	@GetMapping(value="/gmjArchitectName/{gmjArchitectName}")
	public @ResponseBody List<GmjArchitectInfo> userprList(@PathVariable String gmjArchitectName) {
		return gais.getList(gmjArchitectName);
	}
	//어드민
	@GetMapping(value="/mboards")
	public @ResponseBody List<GmjArchitectInfo> getgmjMapList() {
		return gais.getgmjMapList();
	}
	@GetMapping(value="/gmjArchitectBAddress/{gmjArchitectBAddress}")
	public @ResponseBody GmjArchitectInfo checkAddress(@PathVariable String gmjArchitectBAddress) {
		return gais.checkAddress(gmjArchitectBAddress);
	}
	@PostMapping(value="/gmjFavorite")
	public @ResponseBody int checkAddress(@RequestBody GmjFavorite gf) {
		System.out.println(gf);
		return gfs.insertFavorite(gf);
	}
	@DeleteMapping(value="/gmjArchitectInfoDelete/{gmjArchitectbNo}")
	public @ResponseBody int deleteGmjMap(@PathVariable int gmjArchitectbNo) {
		return gms.deleteGmjMap(gmjArchitectbNo);
	}
	@PutMapping(value="/gmjArchitectInfoUpdate")
	public @ResponseBody int updateGmjMap(@RequestBody GmjArchitectInfo ga) {
		return gms.updateGmjMap(ga);
	}
	
	
	
	
}

