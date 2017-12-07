package com.lkssoft.project.schedule.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lkssoft.project.schedule.svc.ScheduleSEI;
import com.lkssoft.project.schedule.svc.ScheduleVO;

@Controller
public class ScheduleController {
     
	@Autowired
	private ScheduleSEI scheduleSEI;
	
	/**
	 * 스케쥴을 등록/수정한다.
	 * 
	 * @param commandMap
	 * @return ModelAndView
	 * @throws Exception
	 */
    @RequestMapping(value="/registerSchedule.do", method=RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public @ResponseBody ScheduleVO registerSchedule(HttpServletRequest req, ScheduleVO scheduleVo) throws Exception{
    		ScheduleVO result = new ScheduleVO();
    		try {
	    		scheduleSEI.insertSchedule(scheduleVo);
	    		result.setResult("suc");
	    	}catch(Exception e) {
	    		result.setResult(e.toString());
	    	}

	    	return result;
    }
}