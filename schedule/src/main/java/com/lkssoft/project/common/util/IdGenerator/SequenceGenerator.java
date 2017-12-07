package com.lkssoft.project.common.util.IdGenerator;

/**
 * ID 시퀀스를 생성한다.
 * @author  
 *
 */
public interface SequenceGenerator {

	/**
	 * 현재 시퀀스값을 바탕으로 다음 시퀀스값을 구한다.
	 * @param currentMaxSq
	 * @return
	 */
	 public String generateSequenceId(String  currentMaxSq);


	/**
     *
	 * 현재 시퀀스값을 바탕으로 다은 시퀀스값을 구한다.
	 * @param prefix
	 * @param currentMaxSq
	 * @return
	 */
	 public String generateSequenceId(String prefix,  String  currentMaxSq);

}
