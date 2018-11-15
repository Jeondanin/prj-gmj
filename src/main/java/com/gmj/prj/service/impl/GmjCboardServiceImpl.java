package com.gmj.prj.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gmj.prj.dao.GmjCboardDAO;
import com.gmj.prj.dao.GmjPageInfoDAO;
import com.gmj.prj.service.GmjCboardService;
import com.gmj.prj.vo.GmjCboard;
@Service
public class GmjCboardServiceImpl implements GmjCboardService {
	@Autowired
	private GmjCboardDAO gcsd;
	@Autowired
	private GmjPageInfoDAO gpid;
	@Override
	public List<GmjCboard> getList() {
		
		//페이지 정보를 불러와서 변수로 넣는다.
		gpid.getPageInfo();
		
		return gcsd.getList();
	}
	@Override
	public int insertCboard(GmjCboard gc,HttpServletRequest req) {
		
		System.out.println("과연 니가 나올까? 타이틀");
		System.out.println(req.getParameter("gmjcboardtitle"));
		MultipartHttpServletRequest multireq = (MultipartHttpServletRequest)req;
		Iterator<String> iterator =multireq.getFileNames();
		MultipartFile mf = null;
		while(iterator.hasNext()) {
			mf = multireq.getFile(iterator.next());
			System.out.println("----start-----");
			System.out.println("name"+mf.getName());
			String orginname;
			try {
				orginname = new String(mf.getOriginalFilename().getBytes("8859_1"),"utf-8");
				System.out.println("Origanalname"+orginname);
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			System.out.println("size"+mf.getSize());
			System.out.println("-----end-----");
			
            File file = new File("C:\\bdi_study\\workspace\\prj-gmj\\src\\main\\webapp\\resources\\uploadfiles\\newimage.png");
            

            try {
				mf.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


		}
		return 0;
	}

}
