package com.example.rewards.repositories;

import com.example.rewards.entities.Transaction;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TransactionRepository extends CrudRepository<Transaction, Long> {
    List<Transaction> findAll();
    List<Transaction> findAllByCustomerId(long customerId);
}
