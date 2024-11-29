package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.CarBooking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CarBookingDaoImpl implements CarBookingDao{
    @Autowired
    private CarBookingRepository carBookingRepository;
    @Override
    public void save(CarBooking carBooking) {
        carBookingRepository.save(carBooking);
    }
    @Override
    public CarBooking findById(String id) {
        return carBookingRepository.findById(id).get();
    }

    @Override
    public String generateBookingId() {
        long id;
        String lastId = carBookingRepository.getLastId();
        if(lastId == null) {
            id = 1000001L;
        } else {
            id = Long.parseLong(lastId.substring(2)) + 1;
        }
        return "BK" + id;
    }
    @Override
    public List<CarBooking> findAll() {
        return carBookingRepository.findAll();
    }

    @Override
    public List<CarBooking> findAllByUsername(String username) {
        return carBookingRepository.findAllByUsername(username);
    }
}