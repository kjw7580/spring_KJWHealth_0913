package com.kimjinwoo.kjwhealth.record;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kimjinwoo.kjwhealth.record.bo.RecordBO;
import com.kimjinwoo.kjwhealth.selfDiagnosis.bo.SelfDiagnosisBO;
import com.kimjinwoo.kjwhealth.selfDiagnosis.model.SelfDiagnosis;

@Controller
@RequestMapping("/post")
public class RecordController {
	
	@Autowired
	private RecordBO recordBO;
	
	@Autowired
	private SelfDiagnosisBO selfDiagnosisBO;

	@GetMapping("/record")
	public String recordView(Model model) {
		
		List<Record> record = recordBO.getRecord();
		
		model.addAttribute("record", record);
		
		List<SelfDiagnosis> selfDiagnosis = selfDiagnosisBO.getSelfDiagnosis();
		
		model.addAttribute("selfDiagnosis", selfDiagnosis);
		
		return "post/record";
	}
}
