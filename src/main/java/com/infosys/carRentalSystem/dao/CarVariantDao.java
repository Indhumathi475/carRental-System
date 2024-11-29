package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.CarVariant;

import java.util.List;


public interface CarVariantDao {
    public void save(CarVariant carVariant);
    public String generateVariantId();
    public CarVariant findById(String id);
    public List<CarVariant> findAll();
    public void deleteVariantById(String id);
    public List<String> getAllVariantIds();
}