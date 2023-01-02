package com.azl6.testforjenkins.controllers;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/test")
public class HelloController {


    @GetMapping
    public ResponseEntity<String> sayHello(){
        return ResponseEntity.ok().body("Mensagem base.");
    }
    
}
