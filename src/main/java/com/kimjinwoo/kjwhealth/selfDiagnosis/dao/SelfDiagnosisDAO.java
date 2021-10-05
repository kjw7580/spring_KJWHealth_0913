package com.kimjinwoo.kjwhealth.selfDiagnosis.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kimjinwoo.kjwhealth.selfDiagnosis.model.SelfDiagnosis;

@Repository
public interface SelfDiagnosisDAO {

	public int insertSelfDiagnosis(
			@Param("minBMI") int minBMI
			, @Param("maxBMI") int maxBMI
			, @Param("content") String content);
	
	public List<SelfDiagnosis> selectSelfDiagnosis();
	
	public SelfDiagnosis selectSelfDiagnosisById(@Param("id") int id);
}
