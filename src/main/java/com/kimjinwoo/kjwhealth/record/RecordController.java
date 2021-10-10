package com.kimjinwoo.kjwhealth.record;

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
import com.kimjinwoo.kjwhealth.diagnosisResult.model.Criteria;
import com.kimjinwoo.kjwhealth.diagnosisResult.model.DiagnosisResult;
import com.kimjinwoo.kjwhealth.diagnosisResult.model.PageMaker;
import com.kimjinwoo.kjwhealth.diet.bo.DietBO;
import com.kimjinwoo.kjwhealth.diet.model.Diet;
import com.kimjinwoo.kjwhealth.healthProducts.bo.HealthProductsBO;
import com.kimjinwoo.kjwhealth.healthProducts.model.HealthProducts;
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
	
	@Autowired
	private DiagnosisResultBO diagnosisResultBO;
	
	@Autowired
	private HealthProductsBO healthProductsBO;
	
	@Autowired
	private DietBO dietBO;

	@GetMapping("/record")
	public String recordView(Model model
			, Criteria criteria
//			, @RequestParam("id") int id
			, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<Record> record = recordBO.getRecord();
		
		model.addAttribute("record", record);
		
		List<SelfDiagnosis> selfDiagnosis = selfDiagnosisBO.getSelfDiagnosis();
		
		model.addAttribute("selfDiagnosis", selfDiagnosis);
		
		List<DiagnosisResult> diagnosisResult = diagnosisResultBO.getRecordDiagnosisResult(userId);
		
		model.addAttribute("diagnosisResult", diagnosisResult);
		
//		List<DiagnosisResult> articles = diagnosisResultBO.listCriteria(criteria);
//		int totalCount = 0;
//		for(DiagnosisResult article : articles) {
//			
//			if(article.getUserId() == userId) {
//				System.out.println(userId);
//				articles = diagnosisResultBO.listCriteria(criteria);
//				totalCount = diagnosisResultBO.countArticles(criteria);
//			}
//		}
		
		criteria.setUserId(userId);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(diagnosisResultBO.countArticles(criteria));
		
		
		model.addAttribute("articles", diagnosisResultBO.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker); 
		
		return "post/record";
	}
	
	@GetMapping("/record_list_paging")
	public String recordListPagingView(Model model
			, Criteria criteria
//			, @RequestParam("id") int id
			, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<Record> record = recordBO.getRecord();
		
		model.addAttribute("record", record);
		
		List<SelfDiagnosis> selfDiagnosis = selfDiagnosisBO.getSelfDiagnosis();
		
		model.addAttribute("selfDiagnosis", selfDiagnosis);
		
		List<DiagnosisResult> diagnosisResult = diagnosisResultBO.getRecordDiagnosisResult(userId);
		
		model.addAttribute("diagnosisResult", diagnosisResult);
		
		criteria.setUserId(userId);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(diagnosisResultBO.countArticles(criteria));
		
		
		model.addAttribute("articles", diagnosisResultBO.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker); 
		
		return "post/recordListPaging";
	}
	
	@GetMapping("/detail_record")
	public String detailRecordView(Model model
			, @RequestParam("id") int id
			, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<DiagnosisResult> diagnosisResults = diagnosisResultBO.getRecordDiagnosisResult(userId);
		
		model.addAttribute("diagnosisResults", diagnosisResults);
		
		List<DiagnosisResult> diagnosisResultList = diagnosisResultBO.getDiagnosisResult(id, userId);
		
		List<HealthProducts> healthProductsList = new ArrayList<HealthProducts>();
		
		List<Diet> dietList = new ArrayList<Diet>();
		
		List<SelfDiagnosis> selfDiagnosisList = new ArrayList<SelfDiagnosis>();
		
		for(DiagnosisResult diagnosisResult : diagnosisResultList) {
//			System.out.println(diagnosisResult.getHealthProductsId());
			
			String healthProductsIds[] = diagnosisResult.getHealthProductsId().split(",");
			for(String healthProductsId : healthProductsIds) {
				
//				System.out.println(healthProductsId);
				
				HealthProducts healthProducts = healthProductsBO.getHealthProductsById(Integer.parseInt(healthProductsId));
				healthProductsList.add(healthProducts);
			}
			
			String dietIds[] = diagnosisResult.getDietId().split(",");
			for(String dietId : dietIds) {
				
				Diet diet = dietBO.getDietById(Integer.parseInt(dietId));
				dietList.add(diet);
			}
			
			String selfDiagnosisIds[] = diagnosisResult.getSelfDiagnosisId().split(",");
			for(String selfDiagnosisId : selfDiagnosisIds) {
				
				SelfDiagnosis selfDiagnosis = selfDiagnosisBO.getSelfDiagnosisById(Integer.parseInt(selfDiagnosisId));
				selfDiagnosisList.add(selfDiagnosis);
			}
		}
		
		model.addAttribute("healthProductsList", healthProductsList);
		
//		List<Diet> dietList = new ArrayList<Diet>();
//		
//		for(DiagnosisResult diagnosisResult : diagnosisResultList) {
//			
//			String dietIds[] = diagnosisResult.getDietId().split(",");
//			for(String dietId : dietIds) {
//				
//				Diet diet = dietBO.getDietById(Integer.parseInt(dietId));
//				dietList.add(diet);
//			}
//		}
		
		model.addAttribute("dietList", dietList);
		
//		List<SelfDiagnosis> selfDiagnosisList = new ArrayList<SelfDiagnosis>();
//		
//		for(DiagnosisResult diagnosisResult : diagnosisResultList) {
//			
//			String selfDiagnosisIds[] = diagnosisResult.getSelfDiagnosisId().split(",");
//			for(String selfDiagnosisId : selfDiagnosisIds) {
//				
//				SelfDiagnosis selfDiagnosis = selfDiagnosisBO.getSelfDiagnosisById(Integer.parseInt(selfDiagnosisId));
//				selfDiagnosisList.add(selfDiagnosis);
//			}
//		}
		
		model.addAttribute("selfDiagnosisList", selfDiagnosisList);
		
		return "post/detailRecordView";
	}
}
