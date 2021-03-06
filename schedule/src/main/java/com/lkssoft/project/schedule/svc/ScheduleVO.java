package com.lkssoft.project.schedule.svc;

import com.lkssoft.project.common.vo.CommonVO;

public class ScheduleVO extends CommonVO{

	private String scheduleId;
	private String eventDate;
	private String eventStartTime;
	private String eventEndTime;
	private String patientName;
	private String treatDvsCode;
	private String simpleMsgCtnt;
	private String eventStatus;
	private String examUsrId;
	private String deleteYn;
	private String createDt;
	private String createUsrId;
	private String updateDt;
	private String updateUsrId;
	
	/**
	 * 시작일자(조회조건)
	 */
	private String startDate;
	/**
	 * 종료일자(조회조건) 
	 */
	private String endDate;
	
	/**
	 * 시작일시
	 */
	private String startDateTime;
	
	/**
	 * 종료일시 
	 */
	private String endDateTime;
	
	public String getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(String scheduleId) {
		this.scheduleId = scheduleId;
	}
	
	public String getEventStartTime() {
		return eventStartTime;
	}
	public void setEventStartTime(String eventStartTime) {
		this.eventStartTime = eventStartTime;
	}
	public String getEventEndTime() {
		return eventEndTime;
	}
	public void setEventEndTime(String eventEndTime) {
		this.eventEndTime = eventEndTime;
	}
	public String getPatientName() {
		return patientName;
	}
	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}
	public String getTreatDvsCode() {
		return treatDvsCode;
	}
	public void setTreatDvsCode(String treatDvsCode) {
		this.treatDvsCode = treatDvsCode;
	}
	public String getSimpleMsgCtnt() {
		return simpleMsgCtnt;
	}
	public void setSimpleMsgCtnt(String simpleMsgCtnt) {
		this.simpleMsgCtnt = simpleMsgCtnt;
	}
	public String getEventStatus() {
		return eventStatus;
	}
	public void setEventStatus(String eventStatus) {
		this.eventStatus = eventStatus;
	}
	public String getExamUsrId() {
		return examUsrId;
	}
	public void setExamUsrId(String examUsrId) {
		this.examUsrId = examUsrId;
	}
	public String getDeleteYn() {
		return deleteYn;
	}
	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}
	public String getCreateDt() {
		return createDt;
	}
	public void setCreateDt(String createDt) {
		this.createDt = createDt;
	}
	public String getUpdateDt() {
		return updateDt;
	}
	public void setUpdateDt(String updateDt) {
		this.updateDt = updateDt;
	}
	public String getEventDate() {
		return eventDate;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public String getCreateUsrId() {
		return createUsrId;
	}
	public void setCreateUsrId(String createUsrId) {
		this.createUsrId = createUsrId;
	}
	public String getUpdateUsrId() {
		return updateUsrId;
	}
	public void setUpdateUsrId(String updateUsrId) {
		this.updateUsrId = updateUsrId;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getStartDateTime() {
		return startDateTime;
	}
	public void setStartDateTime(String startDateTime) {
		this.startDateTime = startDateTime;
	}
	public String getEndDateTime() {
		return endDateTime;
	}
	public void setEndDateTime(String endDateTime) {
		this.endDateTime = endDateTime;
	}
}
