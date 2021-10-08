package com.kimjinwoo.kjwhealth.diet;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kimjinwoo.kjwhealth.diagnosisResult.bo.DiagnosisResultBO;
import com.kimjinwoo.kjwhealth.diagnosisResult.model.DiagnosisResult;
import com.kimjinwoo.kjwhealth.diet.bo.DietBO;
import com.kimjinwoo.kjwhealth.diet.model.Diet;

@Controller
@RequestMapping("/post")
public class DietController {
	
	@Autowired
	private DietBO dietBO;
	
	@Autowired
	private DiagnosisResultBO diagnosisResultBO;
	
	@GetMapping("/diet/create")
	public String dietCreateView() {
		return "/post/dietCreateView";
	}

	@GetMapping("/recipe")
	public String recipeView(Model model) {

		List<Diet> diet = dietBO.getDiet();
		
		model.addAttribute("diet", diet);
		
		return "post/recipe";
	}
	
	@GetMapping("/detail_recipe")
	public String detailRecordView(Model model
			, @RequestParam("id") int id
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<DiagnosisResult> diagnosisResultList = diagnosisResultBO.getDiagnosisResult(id, userId);
		
		List<Diet> dietList = new ArrayList<Diet>();
		
		for(DiagnosisResult diagnosisResult : diagnosisResultList) {
			
			String dietIds[] = diagnosisResult.getDietId().split(",");
			for(String dietId : dietIds) {
				
				Diet diet = dietBO.getDietById(Integer.parseInt(dietId));
				dietList.add(diet);
			}
			
		}
		
		model.addAttribute("dietList", dietList);
		
		return "post/detailRecipeView";
	}
}
