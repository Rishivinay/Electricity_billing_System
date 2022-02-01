package com.ebs.spring.web.usersService;

import java.util.List;

import com.ebs.spring.web.entity.ElectUser;

public interface UserService {
	ElectUser save(ElectUser user);
	
	ElectUser validate(String userName, String password);
	
	List<ElectUser> findAll();
	
	ElectUser findByUserName(String userName);
	
	ElectUser updateUser(int  id);
	
	void delete(int id);
}
