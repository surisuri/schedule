package com.lkssoft.project.mdcChg.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lkssoft.project.common.vo.ResultsVO;
import com.lkssoft.project.mdcChg.svc.MedicalChargeSEI;
import com.lkssoft.project.mdcChg.svc.MedicalChargeVO;
import com.lkssoft.project.schedule.svc.ScheduleVO;

@Controller
public class MedicalChargeController {
	@Autowired
	private MedicalChargeSEI medicalChargeSEI;

	/**
	 * 수가관리 화면으로 이동한다.
	 * 
	 * @param commandMap
	 * @return ModelAndView
	 * @throws Exception
	 */
	@RequestMapping(value = "/medicalChargeView.do")
	public ModelAndView medicalChargeView(Map<String, Object> commandMap) throws Exception {
		ModelAndView mav = new ModelAndView("/mdcChg/medicalCharge");

		return mav;
	}

	/**
	 * 수가관리 목록을 조회한다.
	 * 
	 * @param
	 * @return String
	 * @throws Exception
	 *             예외처리
	 */
	@RequestMapping(value = "selectListMedicalCharge.do", method = RequestMethod.POST)
	public @ResponseBody List<Map<String, Object>> selectListMedicalCharge(HttpServletRequest req) throws Exception {
		List<Map<String, Object>> results = medicalChargeSEI.selectListMedicalCharge();
		return results;
	}

	/**
	 * 검사항목별 수가를 등록/수정한다.
	 * 
	 * @param commandMap
	 * @return ModelAndView
	 * @throws Exception
	 */
	@RequestMapping(value = "/mergeMedicalCharge.do", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody ResultsVO mergeMedicalCharge(HttpServletRequest req, MedicalChargeVO medicalChargeVo)
			throws Exception {
		ResultsVO resultsVo = new ResultsVO<MedicalChargeVO>();
		try {
			medicalChargeSEI.mergeMedicalCharge(medicalChargeVo);
			resultsVo.setResult(true);
		} catch (Exception e) {
			resultsVo.setResult(false);
			resultsVo.setMsg(e.toString());
		}

		return resultsVo;
	}
}