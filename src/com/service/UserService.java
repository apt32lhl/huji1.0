package com.service;

import com.bean.User;

public interface UserService {
	void register(User u);
	boolean login(User u);
}
