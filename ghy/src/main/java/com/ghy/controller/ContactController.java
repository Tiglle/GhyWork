package com.ghy.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {

	@RequestMapping("contact")
	public String contact(Map map){
		map.put("current", 6);
		return "contact";
	}
	
}
