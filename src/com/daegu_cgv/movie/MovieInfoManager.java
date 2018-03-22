package com.daegu_cgv.movie;

import java.util.ArrayList;
import java.util.List;

import com.daegu_cgv.manager.Manager;

public class MovieInfoManager implements Manager<MovieInfo> {
	private List<MovieInfo> list;

	public MovieInfoManager() {
		if (this.list == null) {
			this.list = new ArrayList<>();
		}
	}

	@Override
	public List<MovieInfo> getList() {
		return list;
	}

	@Override
	public void add(MovieInfo info) {
		list.add(info);
	}

	@Override
	public MovieInfo get(int idx) {
		return list.get(idx);
	}

	@Override
	public void update(int idx, MovieInfo info) {
		list.set(idx, info);
	}

	@Override
	public void remove(int idx) {
		list.remove(idx);
	}
}
