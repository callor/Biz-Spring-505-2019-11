package com.biz.todo.repository;

import java.util.List;

import com.biz.todo.domain.ToDoList;

public interface ToDoListDao {
	
	public List<ToDoList> selectAll();
	public int insert(ToDoList todoList);

}
