package com.infosys.carRentalSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.infosys.carRentalSystem.bean.CarUser;
import com.infosys.carRentalSystem.dao.CarUserRepository;

@Service
public class CarUserService implements UserDetailsService {
    @Autowired
    private CarUserRepository repository;
    private String role;
    private String username;
    private String email;

    public void save(CarUser carUser) {
        repository.save(carUser);
    }
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        CarUser carUser = repository.findById(username).get();
        this.role = carUser.getRole();
        this.email = carUser.getEmail();
        this.username = carUser.getUsername();
        return carUser;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getRole() {
        return role;
    }
}