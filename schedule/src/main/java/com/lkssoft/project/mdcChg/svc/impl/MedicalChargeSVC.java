package com.lkssoft.project.mdcChg.svc.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.lkssoft.project.mdcChg.dao.MedicalChargeDAO;
import com.lkssoft.project.mdcChg.svc.MedicalChargeSEI;
import com.lkssoft.project.mdcChg.svc.MedicalChargeVO;

@Service("com.lkssoft.project.mdcchg.svc.MedicalChargeSEI")
public class MedicalChargeSVC implements MedicalChargeSEI{
	
	/**
	 * Medical Charge 정보를 관리하는 DAO
	 */
	@Resource(name="MedicalChargeDAO")
	private MedicalChargeDAO medicalChargeDAO;

	/**
	 * 검사항목별 수가 정보를 등록/수정한다. 
	 * 
	 * @param medicalChargeVO
	 * @return Object 
	 * @exception Exception
	 */
	public Object mergeMedicalCharge(MedicalChargeVO medicalChargeVO) throws Exception {
		String createUsrId = medicalChargeVO.getCreateUsrId();
		if( StringUtils.isEmpty(createUsrId) ) {
			// createUsrId, createUsrDt, updateUsrId, updateUsrDt 
			medicalChargeVO.setCreateUsrId("kim");
			return medicalChargeDAO.insertMedicalCharge(medicalChargeVO);
		}else {
			return medicalChargeDAO.updateMedicalCharge(medicalChargeVO);
		}
	}


	public List<Map<String, Object>> selectListMedicalCharge() throws Exception {
		return medicalChargeDAO.selectListMedicalCharge();
	}

}