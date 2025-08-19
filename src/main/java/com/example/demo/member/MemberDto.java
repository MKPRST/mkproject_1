package com.example.demo.member;

import lombok.Data;

@Data
public class MemberDto {
	private int id;
	private String name, userid, pwd, phone, address, writeday, email; 
}
