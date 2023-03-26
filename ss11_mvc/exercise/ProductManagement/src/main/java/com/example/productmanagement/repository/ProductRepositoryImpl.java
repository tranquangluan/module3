package com.example.productmanagement.repository;

import com.example.productmanagement.bean.Product;

import java.util.*;

public class ProductRepositoryImpl implements ProductRepository{

    private static Map<String,Product> productMap;
    static {
        productMap = new HashMap<>();
        productMap.put("SP01",new Product("SP01","Ao",5000000,"áo","Gucci"));
        productMap.put("SP02",new Product("SP02","Quan",10000000,"quần","Louis Vuitton"));
        productMap.put("SP03",new Product("SP03","Keo",50,"kẹo","Candy"));
        productMap.put("SP04",new Product("SP04","Bánh",100,"bánh","Danisa"));
        productMap.put("SP05",new Product("SP05","Nước-hoa",3500000,"nước-hoa","Dior"));
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
        if(productMap.containsKey(product.getId())){
            productMap.replace(product.getId(), product);
        }
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productMap.values());
    }

    @Override
    public Product findByName(String name) {
        String key = "";
        Set<String> keySet = productMap.keySet();
        for (String key1 : keySet) {
            System.out.println(key1 + " - " + productMap.get(key1));
            if (name.equals(productMap.get(key1).getName())){
                key = productMap.get(key1).getId();
            }
        }
        return productMap.get(key);
    }

    @Override
    public Product findById(String id) {
        return productMap.get(id);
    }
}
