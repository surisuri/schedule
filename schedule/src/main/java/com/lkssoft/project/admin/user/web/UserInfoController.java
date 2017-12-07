package com.lkssoft.project.admin.user.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserInfoController {
     
	/**
	 * 등록화면으로 이동한다.
	 * 
	 * @param commandMap
	 * @return ModelAndView
	 * @throws Exception
	 */
    @RequestMapping(value="/registerView.do")
    public ModelAndView registerView(Map<String,Object> commandMap) throws Exception{
	    	ModelAndView mav = new ModelAndView("/admin/user/register");
	    	  
	    	return mav;
    }

	/**
	 * 신규사용자 등록을 요청한다.
	 * 
	 * @param commandMap
	 * @return ModelAndView
	 * @throws Exception
	 */
    @RequestMapping(value="/register.do")
    public ModelAndView register(Map<String,Object> commandMap) throws Exception{
	    	ModelAndView mav = new ModelAndView("/admin/user/login");
	    	  
	    	return mav;
    }
    
    /**
     * 
     * 로그인 정보 체크해서 처리한다.
     * 
     * @param map
     * @return ModelAndView
     * @throws Exception
     */
    @RequestMapping(value = "/login.do")
    public ModelAndView login(Map<String, Object> map) throws Exception{
    		ModelAndView mav = new ModelAndView("/schedule/scheduleBoard");
    		return mav;
    }
}