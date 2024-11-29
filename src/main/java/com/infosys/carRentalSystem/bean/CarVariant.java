package com.infosys.carRentalSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class CarVariant {
    @Id
    private String variantId;
    private String variantName;
    private Integer numberOfSeat;
    private String fuel;

    public CarVariant(String variantId) {
        super();
        this.variantId = variantId;
    }

    public CarVariant() {
    }

    public CarVariant(String variantId, String variantName, Integer numberOfSeat, String fuel) {
        this.variantId = variantId;
        this.variantName = variantName;
        this.numberOfSeat = numberOfSeat;
        this.fuel = fuel;
    }

    public String getVariantId() {
        return variantId;
    }

    public void setVariantId(String variantId) {
        this.variantId = variantId;
    }

    public String getVariantName() {
        return variantName;
    }

    public void setVariantName(String variantName) {
        this.variantName = variantName;
    }

    public Integer getNumberOfSeat() {
        return numberOfSeat;
    }

    public void setNumberOfSeat(Integer numberOfSeat) {
        this.numberOfSeat = numberOfSeat;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }

    @Override
    public String toString() {
        return "CarVariant{" +
                "variantId='" + variantId + '\'' +
                ", variantName='" + variantName + '\'' +
                ", numberOfSeat=" + numberOfSeat +
                ", fuel='" + fuel + '\'' +
                '}';
    }
}