package com.kimjinwoo.kjwhealth.healthProducts.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kimjinwoo.kjwhealth.common.FileManagerService;
import com.kimjinwoo.kjwhealth.healthProducts.dao.HealthProductsDAO;
import com.kimjinwoo.kjwhealth.healthProducts.model.Criteria;
import com.kimjinwoo.kjwhealth.healthProducts.model.HealthProducts;

@Service
public class HealthProductsBO {

	@Autowired
	private HealthProductsDAO healthProductsDAO;
	
	public int addHealthProducts(int minBMI, int maxBMI, String name, MultipartFile file) {
		
		String filePath = null;
		if(file != null) {
			FileManagerService fileManager = new FileManagerService();
			
			filePath = fileManager.saveFile(0, file);
			
			if(filePath == null) {
				return -1;
			}
		}
		
		return healthProductsDAO.insertHealthProducts(minBMI, maxBMI, name, filePath);
	}
	
	public List<HealthProducts> getHealthProducts() {
		return healthProductsDAO.selectHealthProducts();
	}
	
	public HealthProducts getHealthProductsById(int id) {
		return healthProductsDAO.selectHealthProductsById(id);
	}
	
	public List<HealthProducts> listPaging(int page) throws Exception { 
		return healthProductsDAO.listPaging(page);
	}
	
	public List<HealthProducts> listCriteria(Criteria criteria) throws Exception { 
		return healthProductsDAO.listCriteria(criteria);
	}
	
	public int countArticles(Criteria criteria) throws Exception { 
		return healthProductsDAO.countArticles(criteria);
	}
}
