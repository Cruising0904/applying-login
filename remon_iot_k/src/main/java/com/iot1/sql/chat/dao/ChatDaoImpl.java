package com.iot1.sql.chat.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.iot1.sql.chat.dto.Chat;

@Repository
public class ChatDaoImpl extends SqlSessionDaoSupport implements ChatDao{

	@Override
	public int chatSave(Chat chatInput) {
		return this.getSqlSession().insert("chat.INSERT_CHAT",chatInput);
	}

	@Override
	public List<Chat> chatList() {
		return this.getSqlSession().selectList("chat.SELECT_CHAT");
	}

	@Override
	public Chat newChat() {
		return this.getSqlSession().selectOne("chat.SELECT_NEW_CHAT");
	}
 
	
}
