package com.example.rewards.controller;

import com.example.rewards.entities.Transaction;
import com.example.rewards.repositories.CustomerRepository;
import com.example.rewards.repositories.TransactionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;

@RestController
public class TransactionController {
    TransactionRepository transactionRepository;
    CustomerRepository customerRepository;

    @Autowired
    TransactionController(TransactionRepository transactionRepository, CustomerRepository customerRepository){
        this.transactionRepository = transactionRepository;
        this.customerRepository = customerRepository;
    }
    @GetMapping("/transactions")
    @ResponseBody
    public List<Transaction> transactions(){
        return transactionRepository.findAll();
    }

    @GetMapping("/transactions/{customerId}")
    @ResponseBody
    public List<Transaction> transactionsByCustomerId(@PathVariable long customerId){
        return transactionRepository.findAllByCustomerId(customerId);
    }

    @GetMapping("/rewards/{customerId}")
    @ResponseBody
               public String RewardsByCustomer(@PathVariable long customerId){
        List<Transaction> transactions = transactionRepository.findAllByCustomerId(customerId);
        int totalRewards = 0;
        for(Transaction transaction: transactions) {
            totalRewards += transaction.getRewards();
        }
        String name = customerRepository.findById(customerId).get().getName();
        return "The rewards for "+ name+" is "+ totalRewards;
    }


    @GetMapping("/rewards/{customerId}/{year}/{month}")
    @ResponseBody
    public String RewardsByMonthAndCustomer(@PathVariable long customerId, @PathVariable int year,
                                                   @PathVariable int month){
        List<Transaction> transactions = transactionRepository.findAllByCustomerId(customerId);
        int totalRewards = 0;
        for(Transaction transaction: transactions) {
            LocalDate localDate = transaction.getTimeCreated();
            if(localDate.getMonthValue() == month && localDate.getYear()==year){
                totalRewards += transaction.getRewards();
            }
        }
        String name = customerRepository.findById(customerId).get().getName();
        return "The rewards for "+ name+" in "+ year + "." + month + " is "+ totalRewards;
    }
}
