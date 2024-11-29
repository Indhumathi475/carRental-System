package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerDaoImpl implements CustomerDao{
    @Autowired
    private CustomerRepository customerRepository;
    @Override
    public void save(Customer customer) {
        customerRepository.save(customer);
    }

    @Override
    public Customer findById(String id) {
        Optional<Customer> customer = customerRepository.findById(id);
        return customer.orElse(null);
    }

    @Override
    public List<Customer> findAll() {
        return customerRepository.findAll();
    }

    @Override
    public void deleteCustomerById(String id) {
        customerRepository.deleteById(id);
    }

    @Override
    public Boolean getCustomerStatusByUsername(String username) {
       Boolean status =  customerRepository.getCustomerStatusByUsername(username);
       return status == null || status;
    }
    @Override
    public String getLicenceExpiryDate(String username) {
        return customerRepository.getLicenceExpiryDate(username);
    }


}