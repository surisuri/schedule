package com.lkssoft.project.common.util.datetime;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import com.google.common.base.Strings;
import com.lkssoft.project.common.util.ScheduleConstants;

public class DateUtil {
	
	private DateUtil(){
	}
	
	/**
	 * Date값을 날짜정보 및 시간정보를 포함한 String값으로 형변환 하는 메소드 
	 * 
	 * @param date
	 * @return string (com.sds.faro.common.util.FaroConstants.DEFAULT_DATETIME_FORMAT 참고)
	 */
	public static String getDateTimeString(final Date date) {
		return getString(date, ScheduleConstants.DEFAULT_DATETIME_FORMAT);
	}
	
	/**
	 * Date값을 날짜정보만 포함한 String값으로 형변환 하는 메소드 
	 * 
	 * @param date
	 * @return string (com.sds.faro.common.util.FaroConstants.DEFAULT_DATE_FORMAT 참고)
	 */
	public static String getDateString(final Date date) {
		return getString(date, ScheduleConstants.DEFAULT_DATE_FORMAT);
	}
	
	private static String getString(final Date date, final String format){
		if(date == null){
			return null;
		}

		DateFormat dtFormat = new SimpleDateFormat(format);
		dtFormat.setTimeZone(getTimeZone());
		return dtFormat.format(date);
	}
	
	/**
	 * 정상적인 String값에 대해 Date로 형변환하여 
	 * 해당 날짜의 시분초를 0으로 셋팅한 값을 반환하는 메소드 
	 * 
	 * @param dateString
	 * @return date (해당 날짜의 0시0분0초)
	 */
	public static Date getStartDate(final String dateString){
		
		Calendar cal = getCalendar(dateString);
		if(cal == null){
			return null;
		}
		
		cal.set(Calendar.HOUR_OF_DAY, 0);
		cal.set(Calendar.MINUTE, 0);
		cal.set(Calendar.SECOND, 0);
		cal.set(Calendar.MILLISECOND, 0);
		return cal.getTime();
	}

	/**
	 * 정상적인 String값에 대해 Date로 형변환하여 
	 * 해당 날짜의 23시59분59초으로 셋팅한 값을 반환하는 메소드  
	 * @param dateString
	 * @return date (해당 날짜의 23시59분59초)
	 */
	public static Date getEndDate(final String dateString){
		
		Calendar cal = getCalendar(dateString);
		if(cal == null){
			return null;
		}
		
		cal.set(Calendar.HOUR_OF_DAY, 23);
		cal.set(Calendar.MINUTE, 59);
		cal.set(Calendar.SECOND, 59);
		cal.set(Calendar.MILLISECOND, 999);
		return cal.getTime();
	}
	
	/**
	 * 정상적인 날짜 형식의 String 값에 대해 Date로 형변환하여 반환하는 메소드 
	 * @param datetimeString
	 * @return date
	 */
	public static Date getDate(final String datetimeString) {
		final Calendar cal = getCalendar(datetimeString, ScheduleConstants.DEFAULT_DATETIME_FORMAT);
		if (cal == null) {
			return null;
		}

		return cal.getTime();
	}
	
	private static Calendar getCalendar(final String dateString, final String format) {
		if(Strings.isNullOrEmpty(dateString)){
			return null;
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		sdf.setTimeZone(getTimeZone());
		sdf.setLenient(false);
		
		Date outputDate = null;
		try {
			outputDate = sdf.parse(dateString);
		} catch (ParseException e) {
			return null;
		}
		
		Calendar cal = Calendar.getInstance(getTimeZone());
		cal.setTime(outputDate);
		return cal;
	}

	private static Calendar getCalendar(final String dateString) {
		return getCalendar(dateString, ScheduleConstants.DEFAULT_DATE_FORMAT);
	}

	// 확인필요 
	private static TimeZone getTimeZone() {
		//return TimeZone.getTimeZone(FaroUserSessionHolder.getTimeZoneId());
		return TimeZone.getTimeZone("GMT-00:00");
	}
	
}