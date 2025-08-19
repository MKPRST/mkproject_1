package com.example.demo.contents;

import java.util.List;

import lombok.Data;

@Data
public class ContentsDto {
	private int id, sigan, age, price;
	private String title, location, gigan, gcode, goodsImg, goodsInfoImg, writeday, startSigan;
	//db에는 없음

	private List<String> dates;
	
}
