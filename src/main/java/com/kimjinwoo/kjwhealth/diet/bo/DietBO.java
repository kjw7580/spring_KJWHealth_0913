package com.kimjinwoo.kjwhealth.diet.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kimjinwoo.kjwhealth.common.FileManagerService;
import com.kimjinwoo.kjwhealth.diet.dao.DietDAO;
import com.kimjinwoo.kjwhealth.diet.model.Diet;

@Service
public class DietBO {

	@Autowired
	private DietDAO dietDAO;
	
	public int addDiet(int minBMI, int maxBMI, String name, MultipartFile file, String recipe) {
		
		String filePath = null;
		if(file != null) {
			FileManagerService fileManager = new FileManagerService();
			
			filePath = fileManager.saveFile(0, file);
			
			if(filePath == null) {
				return -1;
			}
		}
		
		return dietDAO.insertDiet(minBMI, maxBMI, name, filePath, recipe);
	}
	
	public List<Diet> getDiet() {
		return dietDAO.selectDiet();
	}
}
