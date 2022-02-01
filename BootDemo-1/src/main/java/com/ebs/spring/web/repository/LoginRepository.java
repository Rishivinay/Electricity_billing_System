package com.ebs.spring.web.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ebs.spring.web.entity.ElectUser;
@Repository
public interface LoginRepository extends JpaRepository<ElectUser, Integer>{
		//custom automation
	Optional<com.ebs.spring.web.entity.ElectUser> findByUserNameAndPassword(String userName,String password);
	
	Optional<com.ebs.spring.web.entity.ElectUser> findByUserName(String userName);
	
	//Optional<com.ebs.spring.web.entity.ElectUser> deleteByUserName(String userName);
}
