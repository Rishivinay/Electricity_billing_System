package com.ebs.spring.web.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ebs.spring.web.entity.CalBill;

//annotation is required
@Repository
public interface BillRepository extends JpaRepository<CalBill, Integer> {

}