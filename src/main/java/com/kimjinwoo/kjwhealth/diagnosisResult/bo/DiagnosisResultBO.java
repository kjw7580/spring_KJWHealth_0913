package com.kimjinwoo.kjwhealth.diagnosisResult.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimjinwoo.kjwhealth.diagnosisResult.dao.DiagnosisResultDAO;
import com.kimjinwoo.kjwhealth.diagnosisResult.model.Criteria;
import com.kimjinwoo.kjwhealth.diagnosisResult.model.DiagnosisResult;

@Service
public class DiagnosisResultBO {
	
	@Autowired
	private DiagnosisResultDAO diagnosisResultDAO;

	public int addDiagnosisResult(int userId, String selfDiagnosisId, String dietId, String healthProductsId) {
		
		return diagnosisResultDAO.insertDiagnosisResult(userId, selfDiagnosisId, dietId, healthProductsId);
	}
	
	public List<DiagnosisResult> getDiagnosisResult(int id, int userId) {
		return diagnosisResultDAO.selectDiagnosisResult(id, userId);
	}
	
	public List<DiagnosisResult> getRecordDiagnosisResult(int userId) {
		return diagnosisResultDAO.selectRecordDiagnosisResult(userId);
	}
	
	public List<DiagnosisResult> getMypageDiagnosisResult(int userId) {
		return diagnosisResultDAO.selectMyPageDiagnosisResult(userId);
	}
	
	public int deleteRecordById(int id) {
		return diagnosisResultDAO.deleteRecordById(id);
	}
	
	public List<DiagnosisResult> listPaging(int page) throws Exception { 
		return diagnosisResultDAO.listPaging(page);
	}
	
	public List<DiagnosisResult> listCriteria(Criteria criteria) throws Exception { 
		return diagnosisResultDAO.listCriteria(criteria);
	}
	
	public int countArticles(Criteria criteria) throws Exception { 
		return diagnosisResultDAO.countArticles(criteria);
	}
}
