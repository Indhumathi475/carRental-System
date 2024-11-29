package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.Car;

import java.util.List;

public interface CarDao {
    public void save(Car car);
    public Car findById(String id);
    public List<Car> findAll();
    public void deleteCarById(String id);
    public List<Car> getAvailableCars();
}