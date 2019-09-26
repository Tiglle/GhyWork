package com.admin.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.service.RecevieService;

@Controller
public class RecevieController {

	@Autowired
	private RecevieService recevieService;
	
	@RequestMapping("loCount")
	@RequiresPermissions("recevice:look")
	public String count(Model model){
		int count = recevieService.selectCount();
		model.addAttribute("count", count);
		return "count";
	}
	
	@RequestMapping("deCount")
	@RequiresPermissions("recevice:del")
	public String deCount(Model model){
		recevieService.deleteAll();
		model.addAttribute("msg", "已删除");
		return "success";
	}
	
}
