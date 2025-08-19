package com.example.demo.contents;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.QnaDto;

@Mapper
public interface ContentsMapper {

	public ArrayList<ContentsDto> contentsList();

	public ContentsDto contentsGoods(String gcode);

	public void order(String userid, String gcode, String startSigan, String date, String price, String ticketSu);

	public void qnaWriteOk(QnaDto qdto);

	
}
