package com.kimjinwoo.kjwhealth.record.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kimjinwoo.kjwhealth.record.dao.RecordDAO;

@Service
public class RecordBO {
	
	@Autowired
	private RecordDAO recordDAO;
	
	public int addRecord(int userId) {
		
		return recordDAO.insertRecord(userId);
	}
	
	public List<Record> getRecord() {
		return recordDAO.selectRecord();
	}

}
