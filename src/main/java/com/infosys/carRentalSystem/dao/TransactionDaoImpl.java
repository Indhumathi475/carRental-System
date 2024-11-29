package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TransactionDaoImpl implements TransactionDao {
    @Autowired
    private TransactionRepository transactionRepository;
    @Override
    public Transaction findById(String id) {
        return transactionRepository.findById(id).get();
    }

    @Override
    public List<Transaction> findAllByBookingId(String id) {
        return transactionRepository.findAllByBookingId(id);
    }

    @Override
    public String generateTransactionId() {
        long id;
        String lastId = transactionRepository.getLastId();
        if(lastId == null) {
            id = 1000001L;
        } else {
            id = Long.parseLong(lastId.substring(3)) + 1;
        }
        return "TXN" + id;
    }
}