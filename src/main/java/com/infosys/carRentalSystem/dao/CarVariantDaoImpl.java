package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.CarVariant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Repository
public class CarVariantDaoImpl implements CarVariantDao {

    @Autowired
    CarVariantRepository carVariantRepository;
    @Override
    public void save(CarVariant carVariant) {
        carVariantRepository.save(carVariant);
    }

    @Override
    public String generateVariantId() {
        int newVariantId;
        String lastVariantId = carVariantRepository.getLastId();
        if(lastVariantId == null)
            newVariantId = 10001;
        else {
            newVariantId = Integer.parseInt(lastVariantId.substring(1)) + 1;
        }
        return "V" + newVariantId;
    }

    @Override
    public CarVariant findById(String id) {
        return carVariantRepository.findById(id).get();
    }

    @Override
    public List<CarVariant> findAll() {
        return carVariantRepository.findAll();
    }

    @Override
    public void deleteVariantById(String id) {
        carVariantRepository.deleteById(id);
    }

    @Override
    public List<String> getAllVariantIds() {
        return carVariantRepository.getAllVariantIds();
    }
}