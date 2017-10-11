package com.iot1.sql.chat.dao;

import java.util.List;

import com.iot1.sql.chat.dto.Chat;

public interface ChatDao {

	public int chatSave(Chat chatInput);
	public List<Chat> chatList();
	public Chat newChat();
}
