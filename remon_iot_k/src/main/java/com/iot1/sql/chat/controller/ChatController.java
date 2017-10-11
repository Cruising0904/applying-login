package com.iot1.sql.chat.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iot1.sql.chat.dto.Chat;
import com.iot1.sql.chat.service.ChatService;

@Controller
public class ChatController {
	
	@Autowired
	private ChatService cs;
	
	@RequestMapping(value="/app/chat", method=RequestMethod.POST)
	public @ResponseBody ModelMap chatSave(@RequestBody Chat chatInput, ModelMap map) {
		int result = cs.chatSave(chatInput);
		map.put("msg", result);
		return map;
	}
	@RequestMapping(value="/app/list", method=RequestMethod.POST)
	public @ResponseBody ModelMap chatlist(ModelMap map) {
		map.put("list", cs.chatList());
		return map;
	}
	@RequestMapping(value="/app/newChat", method=RequestMethod.POST)
	public @ResponseBody ModelMap newChat(ModelMap map) {
		map.put("list", cs.newChat());
		return map;
	}
	
}
