package com.ghy.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JoinusController {

	@RequestMapping("joinus")
	public String joinus(Map map){
		map.put("current", 5);
		return "joinus";
	}
	
	@RequestMapping("projectclass")
	public String projectclass(Map map){
		map.put("current", 3);
		return "projectclass";
	}
	
	@RequestMapping("footer")
	public String footer(Map map){
		map.put("current", 2);
		return "footer";
	}
	
}
