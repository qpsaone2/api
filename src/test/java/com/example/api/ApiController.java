package com.example;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.HashMap;
import java.util.Map; 

@RestController
public class ApiController {

    @GetMapping("/api/message")
    public Map<String, String> getMessage() {

        Map<String, String> response = new HashMap<>();
        response.put("data", "Connected");
        return response;
    }
}
