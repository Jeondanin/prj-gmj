package com.gmj.prj.service.impl;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URISyntaxException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gmj.prj.dao.GmjCboardDAO;
import com.gmj.prj.dao.GmjPageInfoDAO;
import com.gmj.prj.dao.GmjUploadDAO;
import com.gmj.prj.service.GmjCboardService;
import com.gmj.prj.vo.GmjCboard;
import com.gmj.prj.vo.GmjPageInfo;
import com.gmj.prj.vo.GmjReply;
import com.gmj.prj.vo.GmjUpload;
@Service
public class GmjCboardServiceImpl implements GmjCboardService {
	@Autowired
	private GmjCboardDAO gcsd;
	@Autowired
	private GmjPageInfoDAO gpid;
	@Autowired
	private GmjUploadDAO gud;
	@Override
	public List<GmjCboard> getList() {
		
		//페이지 정보를 불러와서 변수로 넣는다.
		
		
		return gcsd.getList();
	}
	@Override
	public int insertCboard(GmjCboard gc,HttpServletRequest req){
		
		
		System.out.println("과연 니가 나올까? 타이틀");
		System.out.println(req.getParameter("gmjcboardtitle"));
		
		
		try {
			String title = new String(gc.getGmjcboardtitle().getBytes("8859_1"),"utf-8");
			String desc = new String(gc.getGmjcboarddesc().getBytes("8859_1"),"utf-8");
			gc.setGmjcboarddesc(desc);
			gc.setGmjcboardtitle(title);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int insert = gcsd.insertCboard(gc);
		GmjCboard forUpload = gcsd.getLatestOne();
		//////////업로드 부분..
		MultipartHttpServletRequest multireq = (MultipartHttpServletRequest)req;
	
		Iterator<String> iterator =multireq.getFileNames();
		MultipartFile mf = null;
		while(iterator.hasNext()) {
			mf = multireq.getFile(iterator.next());
			System.out.println("----start-----");
			System.out.println("name"+mf.getName());
			String orginname;
			try {
				
				if(mf.getOriginalFilename().equals("")) {
					//System.out.println("이름이 빈칸입니다. "+ mf.getOriginalFilename());	
				}else {
					GmjUpload gu = new GmjUpload();
					orginname = new String(mf.getOriginalFilename().getBytes("8859_1"),"utf-8");
					String fEndName = orginname.substring(orginname.lastIndexOf("."));
					System.out.println("Origanalname"+orginname);
					System.out.println("확장자: "+fEndName);
					System.out.println("size"+mf.getSize());
					String path ="C:\\bdi_study\\workspace\\prj-gmj\\src\\main\\webapp\\resources\\uploadfiles\\newimage1"+System.currentTimeMillis()+fEndName;
		            File file = new File(path);
		            String adjusted = path.substring(path.lastIndexOf("\\")+1, path.length());
		            gu.setGmjuploadaddress(adjusted);
		            gu.setGmjcboardno(forUpload.getGmjcboardno());
		            System.out.println(gu);
		            try {
						mf.transferTo(file);
						return gud.uploadFile(gu);
					} catch (IllegalStateException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
	
				}
				

			}catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			System.out.println("-----end-----");
		//	String path = "/resources/uploadfiles/"+orginname+".jpg";
			

		}
		
		return 0;
		
	
	}
	@Override
	public GmjPageInfo getPageInfo() {
		
		return gpid.getPageInfo("gmjcboard");
	}
	@Override
	public List<GmjCboard> getList(HttpServletRequest req) {
		
		return gcsd.getList(req);
	}
	@Override
	public GmjCboard getOne(int gmjcboardno) {
		// TODO Auto-generated method stub
		return gcsd.getOne(gmjcboardno);
	}
	
	///////댓글 
	@Override
	public int insertreply(HashMap<String, String> reply) {
		
		return gcsd.insertReply(reply);
	}
	@Override
	public List<GmjReply> getreply(int gmjcboardno) {
		
		return gcsd.getReply(gmjcboardno);
	}
	@Override
	public List<GmjReply> getreplyadmin() {
		
		return gcsd.getReplyadmin();
	}
	@Override
	public int deleteReply(int gmjreplyno) {
		// TODO Auto-generated method stub
		return gcsd.deleteReply(gmjreplyno);
	}


}
