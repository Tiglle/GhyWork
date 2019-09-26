package com.ghy.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ghy.model.Rcevie;
import com.ghy.service.RcevieService;
import com.ghy.utils.RemoteUtil;
@Controller
public class RcevieController {

	@Autowired
	private RcevieService rcevieService;
	
	@RequestMapping("revice")
	@ResponseBody
	public void index(HttpServletRequest request) throws UnknownHostException{
		Rcevie rcevie = new Rcevie();
		rcevie.setIp(RemoteUtil.getRemortIP(request));
		rcevie.setName(RemoteUtil.getRemoteHost(request));
		rcevie.setType(RemoteUtil.getOsAndBrowserInfo(request));
		rcevie.setTime(new Date());
		rcevieService.insertSelective(rcevie);
	}
	
}
