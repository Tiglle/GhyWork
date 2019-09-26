package com.admin.shiro;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;

public class CustomFormAuthenticationFilter extends FormAuthenticationFilter {

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        // 在这里进行验证码的校检,或者session中数据的校检

        //将ServletRequest转为HttpServletRequest
        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
        //获取session
        HttpSession session = httpServletRequest.getSession();
        //取出session中的验证码
        String code = (String) session.getAttribute("code");

        //取出页面的验证码(从ServletRequest获取)
        String pageCode = httpServletRequest.getParameter("code");
        if(pageCode!=null&&!"".equals(pageCode)&&!pageCode.equals(code)){
            //如果验证码为空或者验证码与session中的不相等,手动设置异常
            httpServletRequest.setAttribute("shiroLoginFailure", "CodeErrorException");
            //拒绝访问,不在继续验证账号密码
            return true;
        }
        //否则,继续验证账号密码(父类方法)
        return super.onAccessDenied(request, response);
    }



}
