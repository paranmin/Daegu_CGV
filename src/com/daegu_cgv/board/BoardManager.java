package com.daegu_cgv.board;

import java.util.ArrayList;
import java.util.List;

import com.daegu_cgv.manager.Manager;

public class BoardManager implements Manager<BoardInfo> {
	private List<BoardInfo> list;
	
	public BoardManager() {
		if (list == null) {
			list = new ArrayList<>();
		}
	}

	@Override
	public void add(BoardInfo info) {
		list.add(info);
	}

	@Override
	public BoardInfo get(int idx) {
		return list.get(idx);
	}

	@Override
	public List<BoardInfo> getList() {
		return list;
	}

	@Override
	public void update(int idx, BoardInfo info) {
		list.set(idx, info);
	}

	@Override
	public void remove(int idx) {
		list.remove(idx);
	}

	public void removeAll() {
		list.clear();
	}
}
