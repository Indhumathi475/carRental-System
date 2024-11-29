package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Customer;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface CustomerDao {
    public void save(Customer customer);
    public Customer findById(String id);
    public List <Customer> findAll();
    public void deleteCustomerById(String id);
    public Boolean getCustomerStatusByUsername(String username);
    public String getLicenceExpiryDate(String username);
}