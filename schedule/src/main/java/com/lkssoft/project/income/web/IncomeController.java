package com.lkssoft.project.income.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IncomeController {
     
	/**
	 * 수입관리 화면을 전시한다.
	 *
	 * @param commandMap
	 * @return ModelAndView 
	 * @throws Exception
	 */
    @RequestMapping(value="/incomeView.do")
    public ModelAndView incomeView(Map<String,Object> commandMap) throws Exception{
	    	ModelAndView mav = new ModelAndView("/income/income");
	    	  
	    	return mav;
    }
}