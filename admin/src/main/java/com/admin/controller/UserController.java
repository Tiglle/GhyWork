package com.admin.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.admin.model.User;
import com.admin.shiro.CustomRealm;

@Controller
public class UserController {

	//注入自定义realm
    @Autowired
    private CustomRealm realm;
	
	@RequestMapping("login")
    public String login(HttpServletRequest request,Model model) throws Exception{
        //如果登陆失败,shiro把异常放入request中,key为shiroLoginFailure,value为异常的全限定名(包名.类名)
        String exceptionName = (String) request.getAttribute("shiroLoginFailure");
        //根据shiro返回的的异常类名判断异常信息
        if(exceptionName!=null){
            if(UnknownAccountException.class.getName().equals(exceptionName)){
                //账号不存在异常
            	model.addAttribute("errMsg","账号不存在");
            }else if(IncorrectCredentialsException.class.getName().equals(exceptionName)){
                //用户名/密码错误
            	model.addAttribute("errMsg","用户名/密码错误");
            }else if("CodeErrorException".equals(exceptionName)){
            	model.addAttribute("errMsg","验证码错误");
            }else{
            	model.addAttribute("errMsg","未知异常");
            }
        }
        return "login";
    }
	
	@RequestMapping("main")
    public String main(Model model){
        //从shiro中获取放入的user信息
        Subject subject = SecurityUtils.getSubject();
        User user = (User) subject.getPrincipal();
        model.addAttribute("user", user);
        return "main";
    }
	
	
	@RequestMapping("clearShiroCache")
	@RequiresPermissions("shiro:clearcache")
    public String clearShiroCache(Model model){
        realm.clearCached();
        model.addAttribute("msg", "清除成功");
        return "success";
    }
}
