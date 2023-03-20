package com.example.productmanagement.service;

import com.example.productmanagement.bean.Product;
import com.example.productmanagement.repository.ProductRepository;
import com.example.productmanagement.repository.ProductRepositotyImpl;

import java.util.List;

public class ProductServiceImpl implements ProductService{
    ProductRepository productRepository = new ProductRepositotyImpl();
    @Override
    public void create(Product product) {
        productRepository.create(product);
    }

    @Override
    public void delete(String id) {
        productRepository.delete(id);
    }

    @Override
    public void update(Product product) {
        productRepository.update(product);
    }

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Product findByName(String name) {
        return productRepository.findByName(name);
    }
}
