package com.example.productmanagement.service;

import com.example.productmanagement.bean.Product;

import java.util.List;

public interface ProductService {
    void create(Product product);
    void delete(String id);
    void update(Product product);
    List<Product> findAll();
    Product findByName(String name);
    Product findById(String id);

}
