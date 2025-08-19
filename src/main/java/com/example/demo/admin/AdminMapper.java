package com.example.demo.admin;

import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminMapper {

	public ArrayList<AdminDto> getOrderList();

	public void cancelOrder(String id, String userid, String gcode);

	//모든 qna 보이기
	public ArrayList<HashMap> customerService();
	//qna 답변
	public void adminQnaAnswer(String id, String answer);
	
	
}
