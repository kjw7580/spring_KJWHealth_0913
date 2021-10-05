package com.kimjinwoo.kjwhealth.selfDiagnosis.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimjinwoo.kjwhealth.selfDiagnosis.dao.SelfDiagnosisDAO;
import com.kimjinwoo.kjwhealth.selfDiagnosis.model.SelfDiagnosis;

@Service
public class SelfDiagnosisBO {

	@Autowired
	private SelfDiagnosisDAO selfDiagnosisDAO;
	
	public int addSelfDiagnosis(int minBMI, int maxBMI, String content) {
		
		return selfDiagnosisDAO.insertSelfDiagnosis(minBMI, maxBMI, content);
	}
	
	public List<SelfDiagnosis> getSelfDiagnosis() {
		return selfDiagnosisDAO.selectSelfDiagnosis();
	}
	
	public SelfDiagnosis getSelfDiagnosisById(int id) {
		return selfDiagnosisDAO.selectSelfDiagnosisById(id);
	}
}
