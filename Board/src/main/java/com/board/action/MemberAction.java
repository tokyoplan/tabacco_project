package com.board.action;

import com.board.dto.MemberDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MemberAction extends ActionSupport{

	MemberDTO dto;

	@Override
	public String execute() throws Exception {
		
		return SUCCESS;
	}

	public MemberDTO getDto() {
		return dto;
	}

	public void setDto(MemberDTO dto) {
		this.dto = dto;
	}

	
}
