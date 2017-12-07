package com.lkssoft.project.schedule.svc.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.lkssoft.project.schedule.dao.ScheduleDAO;
import com.lkssoft.project.schedule.svc.ScheduleSEI;
import com.lkssoft.project.schedule.svc.ScheduleVO;

@Service("ScheduleSEI")
public class ScheduleSVC implements ScheduleSEI{
	
	/**
	 * schedule정보를 관리하는 DAO
	 */
	@Resource(name="ScheduleDAO")
	private ScheduleDAO scheduleDAO;


	public Object insertSchedule(ScheduleVO scheduleVo) throws Exception {
		if( StringUtils.isEmpty(scheduleVo.getScheduleId()) ) {
			scheduleVo.setScheduleId(scheduleDAO.nextSequeceNumber());
		}
		return scheduleDAO.insertSchedule(scheduleVo);
	}
}