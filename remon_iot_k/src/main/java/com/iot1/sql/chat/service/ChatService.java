package com.iot1.sql.chat.service;

import java.util.List;

import com.iot1.sql.chat.dto.Chat;

public interface ChatService {

	public int chatSave(Chat chatInput);
	public List<Chat> chatList();
	public Chat newChat();
}
