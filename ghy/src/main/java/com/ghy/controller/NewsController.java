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
public class NewsController {

	@Autowired
	private NewsService newsService;
	
	@RequestMapping("list")
	public String list(Map map,int pageSize,int pageNow){
		Page<News> page = new Page<News>();
		page.setPageNow(pageNow);
		page.setPageSize(pageSize);
		List<News> list = newsService.list(page);
		int pageSum = newsService.selectPageSum(page);
		page.setData(list);
		page.setPageSum(pageSum);
		map.put("current", 4);
		map.put("page", page);
		return "news";
	}
	
	@RequestMapping("detail")
	public String detail(Map map,int newsId){
		News news = newsService.selectById(newsId);
		if(newsId>1&&news!=null){
			map.put("prvNews",newsService.selectPrvNewsById(newsId));
		}
		if(newsId>0){
			map.put("nextNews",newsService.selectNextNewsById(newsId));
		}
		map.put("news", news);
		map.put("current", 4);
		return "newsDetail";
	}
	
}
