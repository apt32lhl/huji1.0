package com.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

	@Override
	public void register(com.bean.User u) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean login(com.bean.User u) {
		// TODO Auto-generated method stub
		if (u.getUserName()=="123" && u.getUserPass()=="123"){
			return true;
		}
		return false;
	}

}
