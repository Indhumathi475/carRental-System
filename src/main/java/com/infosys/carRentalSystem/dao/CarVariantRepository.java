package com.infosys.carRentalSystem.dao;

import com.infosys.carRentalSystem.bean.CarVariant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarVariantRepository extends JpaRepository<CarVariant, String> {
    @Query("SELECT max(variantId) from CarVariant")
    public String getLastId();

    @Query("select variantId from CarVariant")
    public List<String> getAllVariantIds();
}