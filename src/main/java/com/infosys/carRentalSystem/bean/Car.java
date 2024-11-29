package com.infosys.carRentalSystem.bean;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Car {
    @Id
    private String carNumber;
    private String carName;
    private String carColor;

    private String manufacturer;

    private Integer yearOfMfg;

    private Double rentRate;

    private String variantId;

    private Boolean available;

    public Car() {
        super();
        this.available=Boolean.TRUE;
    }

    public Car(String carNumber, String carName, String carColor, String manufacturer, Integer yearOfMfg, Double rentRate, String variantId, Boolean available) {
        this.carNumber = carNumber;
        this.carName = carName;
        this.carColor = carColor;
        this.manufacturer = manufacturer;
        this.yearOfMfg = yearOfMfg;
        this.rentRate = rentRate;
        this.variantId = variantId;
        this.available = available;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    public String getCarName() {
        return carName;
    }

    public void setCarName(String carName) {
        this.carName = carName;
    }

    public String getCarColor() {
        return carColor;
    }

    public void setCarColor(String carColor) {
        this.carColor = carColor;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public Integer getYearOfMfg() {
        return yearOfMfg;
    }

    public void setYearOfMfg(Integer yearOfMfg) {
        this.yearOfMfg = yearOfMfg;
    }

    public Double getRentRate() {
        return rentRate;
    }

    public void setRentRate(Double rentRate) {
        this.rentRate = rentRate;
    }

    public String getVariantId() {
        return variantId;
    }

    public void setVariantId(String variantId) {
        this.variantId = variantId;
    }

    public Boolean getAvailable() {
        return available;
    }

    public void setAvailable(Boolean available) {
        this.available = available;
    }
}