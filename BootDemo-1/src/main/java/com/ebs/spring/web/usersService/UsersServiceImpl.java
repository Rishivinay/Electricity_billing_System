package com.ebs.spring.web.usersService;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ebs.spring.web.entity.ElectUser;
import com.ebs.spring.web.repository.LoginRepository;

@Service
public class UsersServiceImpl implements UserService{
@Autowired
LoginRepository loginRepository;
	@Override
	public ElectUser save(ElectUser user) {
		
		ElectUser optionalSave = loginRepository.save(user) ;
		return optionalSave;				
	}
	@Override
	public ElectUser validate(String userName, String password) {
		Optional<ElectUser> validation = loginRepository.findByUserNameAndPassword(userName, password);
		if(validation.isEmpty()) {
			return null;
		}
		return validation.get();
		
	}
	@Override
	public List<ElectUser> findAll() {
		List<ElectUser> list = loginRepository.findAll();
		if(list.isEmpty()) {
		return null;
	}
		return list;
		
}
	@Override
	public ElectUser findByUserName(String userName) {
	Optional<ElectUser> optional = loginRepository.findByUserName(userName);
	if(optional.isEmpty()) {
		return null;
	}
		return optional.get();
	}
	
	
	
	
	@Override
	public void delete(int id) {
		loginRepository.deleteById(id);
		
	}
//	@Override
//	public ElectUser getUserById(int id) {
//		Optional<ElectUser> optional = loginRepository.findById(id);
//		ElectUser user = null;
//		if(optional.isPresent()) {
//			user = optional.get();
//		}
//		else {
//			throw new RuntimeException("User not found for id ::" +id);
//		}
//		return user;
//	}
	@Override
	public ElectUser updateUser(int id) {
		 Optional<ElectUser> optional= loginRepository.findById(id);
		  
		  ElectUser user=null;
		  
		  if(optional.isPresent()) {
		  
		  user = optional.get(); 
		  }
		  else { 
			  throw new RuntimeException("User not found for id " +id); 
		  } 
		  return user; 
		  }
	
	
}
