package com.example.Cukraszda;

public class sutiClassNotFoundException extends RuntimeException{
    sutiClassNotFoundException(Integer id){
        super("Süti ezzel az azonosítóval nem található: "+id);
    }
}
