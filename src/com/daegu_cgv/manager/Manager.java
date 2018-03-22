package com.daegu_cgv.manager;


import java.util.List;

public interface Manager<T> {
	void add(T info);	
	T get(int idx);
	List<T> getList();
	void update(int idx, T info);
	void remove(int idx);
}
