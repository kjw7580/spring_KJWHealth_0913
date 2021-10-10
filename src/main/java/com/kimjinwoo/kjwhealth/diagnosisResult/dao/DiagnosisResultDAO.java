package com.kimjinwoo.kjwhealth.diagnosisResult.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kimjinwoo.kjwhealth.diagnosisResult.model.Criteria;
import com.kimjinwoo.kjwhealth.diagnosisResult.model.DiagnosisResult;

@Repository
public interface DiagnosisResultDAO {

	public int insertDiagnosisResult(
			@Param("userId") int userId
			, @Param("selfDiagnosisId") String selfDiagnosisId
			, @Param("dietId") String dietId
			, @Param("healthProductsId") String healthProductsId);
	
	public List<DiagnosisResult> selectDiagnosisResult(@Param("id") int id
			, @Param("userId") int userId);
	
	public List<DiagnosisResult> selectRecordDiagnosisResult(@Param("userId") int userId);
	
	public List<DiagnosisResult> selectMyPageDiagnosisResult(@Param("userId") int userId);
	
	public int deleteRecordById(@Param("id") int id);
	
	public List<DiagnosisResult> listPaging(@Param("page") int page);
	
	public List<DiagnosisResult> listCriteria(Criteria criteria);
	
	public int countArticles(Criteria criteria);
}
