package com.iot1.sql.chat.dto;

import org.springframework.stereotype.Component;

@Component
public class Chat {
	private int chatNum;
	private String chatName;
	private String chatContent;
	private String chatTime;
	
	public int getChatNum() {
		return chatNum;
	}
	public void setChatNum(int chatNum) {
		this.chatNum = chatNum;
	}
	public String getChatName() {
		return chatName;
	}
	public void setChatName(String chatName) {
		this.chatName = chatName;
	}
	public String getChatContent() {
		return chatContent;
	}
	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}
	
	public String getChatTime() {
		return chatTime;
	}
	public void setChatTime(String chatTime) {
		this.chatTime = chatTime;
	}
	@Override
	public String toString() {
		return "Chat [chatName=" + chatName + ", chatContent=" + chatContent + ", chatTime=" + chatTime + "]";
	}
	
	
}
