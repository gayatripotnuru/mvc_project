package com.MovieApp.MovieApp.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.MovieApp.MovieApp.Entity.Payments;
import com.MovieApp.MovieApp.Repository.PaymentRepository;

import java.util.Date;

@Service
public class PaymentService {

    @Autowired
    private PaymentRepository paymentRepository;

    public Payments savePayment(Payments payment) {
        // Set default fields before saving
        payment.setCreatedAt(new Date());
        payment.setUpdatedAt(new Date());
        payment.setStatus("SUCCESS");  // Assume payment is successful for now
        payment.setCreatedBy("System");
        payment.setUpdatedBy("System");

        return paymentRepository.save(payment);
    }
}