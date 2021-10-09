package com.kimjinwoo.kjwhealth.post.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kimjinwoo.kjwhealth.post.model.Criteria;
import com.kimjinwoo.kjwhealth.post.model.Post;

@Service
public interface PostService {

	List<Post> listCriteria(Criteria criteria) throws Exception;
}
