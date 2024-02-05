package com.example.rewards.repositories;

import com.example.rewards.entities.Customer;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
    public interface CustomerRepository extends CrudRepository<Customer, Long> {
            List<Customer> findAll();
    }
