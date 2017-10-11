package com.iot1.sql.chat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iot1.sql.chat.dao.ChatDao;
import com.iot1.sql.chat.dto.Chat;

@Repository
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	private ChatDao cd;
	
	@Override
	public int chatSave(Chat chatInput) {
		return cd.chatSave(chatInput);
	}

	@Override
	public List<Chat> chatList() {
		return cd.chatList();
		
	}

	@Override
	public Chat newChat() {
		return cd.newChat();
	}
	
}
