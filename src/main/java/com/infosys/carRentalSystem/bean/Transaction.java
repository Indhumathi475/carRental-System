package com.infosys.carRentalSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Transaction {
    @Id
    private String transactionId;
    private String paymentRefNo;
    private String bookingId;
    private Double amount;
    private Boolean isApproved;
    public Transaction() {
        super();
        this.isApproved = false;
    }

    public Transaction(String transactionId, String paymentRefNo, String bookingId, Double amount, Boolean isApproved) {
        this.transactionId = transactionId;
        this.paymentRefNo = paymentRefNo;
        this.bookingId = bookingId;
        this.amount = amount;
        this.isApproved = isApproved;
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId;
    }

    public String getPaymentRefNo() {
        return paymentRefNo;
    }

    public void setPaymentRefNo(String paymentRefNo) {
        this.paymentRefNo = paymentRefNo;
    }

    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public Boolean getApproved() {
        return isApproved;
    }

    public void setApproved(Boolean approved) {
        isApproved = approved;
    }
}