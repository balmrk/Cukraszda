package com.example.Cukraszda.Exceptions;

public class sutiClassNotFoundException extends RuntimeException{
    public sutiClassNotFoundException(Integer id){
        super("Süti ezzel az azonosítóval nem található: "+id);
    }
}
