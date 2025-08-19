package com.example.demo.dto;

import lombok.Data;

@Data
public class QnaDto {
	private int id, answer, qna;
	private String userid,content, writeday, title, gcode;
	private String adminCnt;
}
