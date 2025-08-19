package com.example.demo.member;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.admin.AdminDto;

@Mapper
public interface MemberMapper {

	public void memberOk(MemberDto mdto);

	public MemberDto memberInfo(String userid);

	public String getPwd(String userid);

	public ArrayList<HashMap> mypage(String userid);

	public ArrayList<HashMap> qnaList(String userid);

	public void memberQnaDel(String id);

	//memberInfo 의 정보변경 알고리즘
	public void chgEmail(String email, String userid);
	public void chgPhone(String phone, String userid);
	public void chgPwd(String newPwd2, String userid);
	
	
}
