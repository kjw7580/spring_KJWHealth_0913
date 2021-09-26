package com.kimjinwoo.kjwhealth.record.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RecordDAO {

	public int insertRecord(@Param("userId") int userId);
	
	public List<Record> selectRecord();
}
