package com.example.productmanagement.repository;

import com.example.productmanagement.bean.Product;

import java.util.List;

public interface ProductRepository {
    void create(Product product);
    void delete(String id);
    void update(Product product);
    List<Product> findAll();
    Product findByName(String name);
    Product findById(String id);


}
