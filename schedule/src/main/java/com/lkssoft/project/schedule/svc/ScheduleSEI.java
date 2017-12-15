package com.lkssoft.project.schedule.svc;

import java.util.List;
import java.util.Map;

public interface ScheduleSEI{
	
	/**
	 * 스케쥴을 등록, 수정한다.
	 * 
	 * @param scheduelMap
	 * @return Object
	 * @exception Exception 
	 */
	public Object insertSchedule(ScheduleVO scheduleVo) throws Exception;
	
	/**
	 * 조회기간 내 등록된 스케쥴 목록을 조회한다.
	 * 
	 * @param searchVO 조회조
	 * @return List<ScheduleVO> 일정목
	 * @throws Exception 예외처
	 */
	public List<Map<String, Object>> selectListEvent(ScheduleVO searchVO) throws Exception;
}
