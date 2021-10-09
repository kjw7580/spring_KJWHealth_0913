//package com.kimjinwoo.kjwhealth.post.dao;
//
//import java.util.Optional;
//
//import com.sun.org.apache.bcel.internal.util.Repository;
//
//public interface CrudRepository<T, ID> extends Repository<T, ID> {
//
//	  <S extends T> S save(S entity);      
//
//	  Optional<T> findById(ID primaryKey); 
//
//	  Iterable<T> findAll();               
//
//	  long count();                        
//
//	  void delete(T entity);               
//
//	  boolean existsById(ID primaryKey);   
//
//	  // … more functionality omitted.
//	}
