package com.lkssoft.project.schedule.svc;

public interface ScheduleSEI{
	
	/**
	 * 스케쥴을 등록, 수정한다.
	 * 
	 * @param scheduelMap
	 * @return Object
	 * @exception Exception 
	 */
	public Object insertSchedule(ScheduleVO scheduleVo) throws Exception;
}
