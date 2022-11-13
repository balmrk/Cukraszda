package com.example.Cukraszda;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.FileNotFoundException;

@SpringBootApplication
public class CukraszdaApplication {

	public static void main(String[] args) throws FileNotFoundException {
		SpringApplication.run(CukraszdaApplication.class, args);
	}

}
