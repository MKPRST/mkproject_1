package com.example.demo.board;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {

	public ArrayList<BoardDto> boardList();

	public void writeOk(BoardDto bdto);

	public BoardDto boardContent(String id);
	
}
