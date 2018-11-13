package com.gmj.prj.aop;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.gmj.prj.dao.GmjLogDAO;

@Aspect
public class AspectLogger {
	@Autowired
	private GmjLogDAO gld;
	private static final Logger logger = LoggerFactory.getLogger(AspectLogger.class);

	@Before("execution(* com.gmj.prj.service.*.*(..))")
	public void beforeLog(JoinPoint jp) {
		logger.debug("@Before => {}", jp);
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		String ip = req.getRemoteAddr();
		System.out.println(ip);
		Map<String, String> logMap = new HashMap<String, String>();
		logMap.put("gmjlogip", ip);
		logMap.put("gmjlogarea", jp.toString());
		gld.gmjInsertLog(logMap);

	}

	@Before("execution(* com.gmj.prj.controller.*.*(..))")
	public void beforeControllerLog(JoinPoint jp) {
		logger.debug("@Before => {}", jp);

	}

	@Around("execution(* com.gmj.prj.controller.Map*.*(..))")
	public Object aroundControllerLog(ProceedingJoinPoint pjp) throws Throwable {
		String sigName = pjp.getSignature().getName();
		String tarName = pjp.getTarget().toString();
		Object[] params = pjp.getArgs();
		String str = "";
		for (Object o : params) {
			str += o.toString() + ",";
		}
		
		logger.debug("@around start");
		logger.debug("{}.{}({})", new Object[] { tarName, sigName, str });
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		HttpSession hs = req.getSession();
		
		String ip = req.getRemoteAddr();
		System.out.println(ip);

		Object obj = null;
		logger.debug("유저세션값{}",hs.getAttribute("user"));
		if(hs.getAttribute("user").equals("2")) {
			obj = pjp.proceed();
			logger.debug("@Result=>{}", obj);
			logger.debug("@around end");
			return obj;
		}else {
			logger.debug("못들어감");
			return ("못들어가");
		}		
	}

	@Around("execution(* com.gmj.prj.service.impl.GmjLoginServiceImpl*.*(..))")
	public Object aroundLogin(ProceedingJoinPoint pjp) throws Throwable {
		
		String sigName = pjp.getSignature().getName();
		String tarName = pjp.getTarget().toString();
		Object[] params = pjp.getArgs();
		String str = "";
		for (Object o : params) {
			str += o.toString() + ",";
		}
		System.out.println("어라운드는 실행안되니");
		logger.debug("@around start");
		logger.debug("{}.{}({})", new Object[] { tarName, sigName, str });
		Object obj = null;
		// if로 세션값을 확인한 후 실행 여부를 결정한다.
		obj = pjp.proceed();
		logger.debug("@Result=>{}", obj);
		logger.debug("@around end");
		return obj;
	}

	@After("execution(* com.gmj.prj.service.impl.GmjLoginServiceImpl*.*(..))")
	public void afterLog(JoinPoint jp) {
		HttpServletRequest req = ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes())
				.getRequest();
		HttpSession hs = req.getSession();
		hs.setAttribute("user", "2");
		System.out.println("세션에 유저를 넣어줌.");
		logger.debug("@After => {}", jp);
	}
	@After("execution(* com.gmj.prj.controller.*Controller.*(..))")
	public void afterLogin(JoinPoint jp) {
		System.out.println("애프터");
		logger.debug("@After => {}", jp);
	}
}
