package com.example.productmanagement.bean;

public class Product {
    private String id;
    private String name;
    private double price;
    private String desciption;
    private String manufacturer;

    public Product() {
    }

    public Product(String id, String name, double price, String desciption, String manufacturer) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.desciption = desciption;
        this.manufacturer = manufacturer;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }
}
