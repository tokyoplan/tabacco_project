package com.board.dto;
//유효성 검사가능



public class MemberDTO {
	private String id;
	private String pw;
	
	public MemberDTO(String id, String pw) {
		this.id = id;
		this.pw = pw;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", pw=" + pw + "]";
	}
	
	
	
}
