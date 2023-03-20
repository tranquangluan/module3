package com.example.productmanagement.repository;

import com.example.productmanagement.bean.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepositotyImpl implements ProductRepository{

    private static Map<String,Product> productMap;
    static {
        productMap = new HashMap<>();
        productMap.put("SP01",new Product("SP01","Ao",1000,"áo","gucci"));
        productMap.put("SP02",new Product("SP02","Quan",1000,"quần","gucci"));
        productMap.put("SP03",new Product("SP03","keo",1000,"kẹo","gucci"));
        productMap.put("SP04",new Product("SP04","banh",1000,"bánh","gucci"));
    }

    @Override
    public void create(Product product) {
        if(!productMap.containsKey(product.getId())){
            productMap.put(product.getId(), product);
        }
    }

    @Override
    public void delete(String id) {
        productMap.remove(id);
    }

    @Override
    public void update(Product product) {
        if(!productMap.containsKey(product.getId())){
            productMap.put(product.getId(), product);
        }
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public Product findByName(String name) {
        return productMap.get(name);
    }
}
