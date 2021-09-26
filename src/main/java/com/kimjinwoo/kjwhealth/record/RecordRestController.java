package com.kimjinwoo.kjwhealth.record;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kimjinwoo.kjwhealth.record.bo.RecordBO;

@RestController
@RequestMapping("/post")
public class RecordRestController {
	
	@Autowired
	private RecordBO recordBO;

	@PostMapping("/record/create")
	public Map<String, String> create(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		int count = recordBO.addRecord(userId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
		
	}
}
