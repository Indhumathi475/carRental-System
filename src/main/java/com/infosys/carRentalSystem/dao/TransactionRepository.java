package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TransactionRepository extends JpaRepository<Transaction, String> {
    @Query("SELECT max(transactionId) from Transaction")
    public String getLastId();
    @Query("SELECT t FROM Transaction t WHERE t.bookingId = :bookingId")
    List<Transaction> findAllByBookingId(@Param("bookingId") String bookingId);

}