package com.javainuse.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping({ "/hello" })
public class HelloWorldController {


	@GetMapping(path = { "/oo" })
	public String hello() {
		return "Hello World";
	}

}
