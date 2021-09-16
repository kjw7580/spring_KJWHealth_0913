package com.kimjinwoo.kjwhealth.record;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class RecordController {

	@GetMapping("/record")
	public String recordView() {
		return "post/record";
	}
}
