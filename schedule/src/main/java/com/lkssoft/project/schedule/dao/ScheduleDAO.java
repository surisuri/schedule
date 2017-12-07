package com.lkssoft.project.schedule.dao;
 
import org.springframework.stereotype.Repository;
import com.lkssoft.project.admin.com.dao.AbstractDAO;
import com.lkssoft.project.schedule.svc.ScheduleVO;  

@Repository("ScheduleDAO")
public class ScheduleDAO extends AbstractDAO{

	/**
	 * 스케쥴을 등록한다.
	 * 
	 * @param scheduelMap
	 * @return Object
	 * @exception Exception 
	 */
	public Object insertSchedule(ScheduleVO scheculeVo) throws Exception{ 	
	    return insert("Schedule.insertSchedule", scheculeVo);	
	}
	
	/**
	 * evnet 일련번호를 생성한다.
	 * 
	 * @return String 일련번
	 * @throws Exception 예외처리
	 */
	public String nextSequeceNumber() throws Exception{
		return (String)selectOne("Schedule.nextSequeceNumber");
	}
}