package com.techelevator.controllers;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/public")
@CrossOrigin
@PreAuthorize("isAuthenticated()")
public class PublicController {
    /*
        This controller was here as part of the starter project file this was created from. Left here because at
        some point I may add the ability to log in and track sites visited, wishlist sites, and junior ranger
        programs completed. Leaving as a reference.
    */
    @GetMapping("/hello")
    @PreAuthorize("permitAll")
    public String getHelloMessage() {
        return "Hello World!";
    }
}
