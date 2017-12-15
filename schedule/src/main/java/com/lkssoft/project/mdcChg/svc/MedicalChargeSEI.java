package com.lkssoft.project.mdcChg.svc;

import java.util.List;
import java.util.Map;

public interface MedicalChargeSEI{
	
	/**
	 * 스케쥴을 등록, 수정한다.
	 * 
	 * @param medicalChargeVO 검사항목별 수가 정
	 * @return Object
	 * @exception Exception 
	 */
	public Object mergeMedicalCharge(MedicalChargeVO medicalChargeVO) throws Exception;
	
	/**
	 * 등록된 검사별 수가목록을 조회한다. 
	 * 
	 * @param searchVO
	 * @return List<Map<String, Object>> 검사항목별 수가목록 
	 * @throws Exception
	 */
	public List<Map<String, Object>> selectListMedicalCharge() throws Exception;
}
