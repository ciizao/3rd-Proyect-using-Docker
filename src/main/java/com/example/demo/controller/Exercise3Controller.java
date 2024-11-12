package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Exercise3Controller {
    @GetMapping
    public String hello() {
        return "This is a web message made in Java";
    }
}

