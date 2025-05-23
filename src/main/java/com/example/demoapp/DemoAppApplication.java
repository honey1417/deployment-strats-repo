package com.example.demoapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoAppApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoAppApplication.class, args);
    }

    @GetMapping("/hello")
    public String hello() {
        // You can imagine this returning data from a database or another service
        return "Hello from Spring Boot CI/CD App! (Version: 1.0)";
    }

    @GetMapping("/health")
    public String health() {
        return "UP"; // Simple health check endpoint
    }
}