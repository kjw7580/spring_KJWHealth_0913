package com.kimjinwoo.kjwhealth.diagnosisResult;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kimjinwoo.kjwhealth.BMI.bo.BMIBO;
import com.kimjinwoo.kjwhealth.BMI.model.BMI;
import com.kimjinwoo.kjwhealth.diet.bo.DietBO;
import com.kimjinwoo.kjwhealth.diet.model.Diet;
import com.kimjinwoo.kjwhealth.healthProducts.bo.HealthProductsBO;
import com.kimjinwoo.kjwhealth.healthProducts.model.HealthProducts;
import com.kimjinwoo.kjwhealth.selfDiagnosis.bo.SelfDiagnosisBO;
import com.kimjinwoo.kjwhealth.selfDiagnosis.model.SelfDiagnosis;

@Controller
@RequestMapping("/post")
public class DiagnosisResultController {
	
	@Autowired
	private BMIBO bmiBO;
	
	@Autowired
	private DietBO dietBO;
	
	@Autowired
	private HealthProductsBO healthProductsBO;
	
	@Autowired
	private SelfDiagnosisBO selfDiagnosisBO;
	
	@GetMapping("/diagnosis_result")
	public String diagnosisResultView(Model model) {
		
		List<BMI> bmi = bmiBO.getBMI();
		
		model.addAttribute("bmi", bmi);
		
		List<Diet> diet = dietBO.getDiet();
		
		model.addAttribute("diet", diet);
		
		List<HealthProducts> healthProducts = healthProductsBO.getHealthProducts();
		
		model.addAttribute("healthProducts", healthProducts);
		
		List<SelfDiagnosis> selfDiagnosis = selfDiagnosisBO.getSelfDiagnosis();
		
		model.addAttribute("selfDiagnosis", selfDiagnosis);
		
		return "post/diagnosisResult";
	}
}
