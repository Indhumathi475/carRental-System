package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Transaction;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface TransactionDao {
    public Transaction findById(String id);
    public List<Transaction> findAllByBookingId(String id);
    public String generateTransactionId();
}