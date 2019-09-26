package com.ghy.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ghy.model.News;
import com.ghy.page.Page;
import com.ghy.service.NewsService;

@Controller
public class IndexController {

	@Autowired
	private NewsService newService;
	
	@RequestMapping("index")
	public String index(Map map){
		Page<News> page = new Page();
		page.setPageSize(4);
		page.setPageNow(1);
		List<News> list = newService.list(page);
		page.setData(list);
		map.put("current", 1);
		map.put("page", page);
		return "index";
	}
	
}
