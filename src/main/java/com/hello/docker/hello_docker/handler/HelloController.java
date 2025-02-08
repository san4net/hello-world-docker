package com.hello.docker.hello_docker.handler;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class HelloController {


    @GetMapping("/hello")
    public ResponseEntity<String> sayHello() {
        // Create a ResponseEntity with a body and an HTTP status code (OK)
        return new ResponseEntity<>("hello-world", HttpStatus.OK);
    }


}
