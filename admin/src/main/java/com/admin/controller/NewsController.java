package com.admin.controller;

import java.util.Date;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.model.News;
import com.admin.service.NewsService;

@Controller
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	@RequestMapping("addNews")
	@RequiresPermissions("news:add")
	public String addNews(){
		return "addNews";
	}
	
	@RequestMapping("saveNews")
	@RequiresPermissions("news:save")
	public String saveNews(News news,Model model){
		news.setTime(new Date());
		int i = newsService.insertSelective(news);
		model.addAttribute("msg", "成功添加"+i+"条新闻");
		return "success";
	}
}
