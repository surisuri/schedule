package com.lkssoft.project.schedule.svc.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.lkssoft.project.schedule.dao.ScheduleDAO;
import com.lkssoft.project.schedule.svc.ScheduleSEI;
import com.lkssoft.project.schedule.svc.ScheduleVO;

@Service("com.lkssoft.project.schedule.svc.ScheduleSEI")
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


	/**
	 * 조회기간 내 등록된 스케쥴 목록을 조회한다.
	 * 
	 * @param searchVO 조회조건 
	 * @return List<ScheduleVO> 일정목
	 * @throws Exception 예외처
	 */
	public List<Map<String, Object>> selectListEvent(ScheduleVO searchVO) throws Exception {
		return scheduleDAO.selectListEvent(searchVO);
	}
}