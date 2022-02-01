package com.ebs.spring.web.usersService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ebs.spring.web.entity.CalBill;
import com.ebs.spring.web.repository.BillRepository;

@Service
public class BillServiceImpl implements BillService {

	@Autowired
	BillRepository billRepository;

	@Override
	public CalBill save(CalBill calc) {

		CalBill billSave = billRepository.save(calc);
		return billSave;

	}

}