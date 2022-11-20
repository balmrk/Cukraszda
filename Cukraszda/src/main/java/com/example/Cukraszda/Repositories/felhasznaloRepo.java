package com.example.Cukraszda.Repositories;

import com.example.Cukraszda.Models.felhasznaloClass;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface felhasznaloRepo extends CrudRepository<felhasznaloClass,Integer> {
    Optional<felhasznaloClass> findByUsername(String felhasznalonev);
}
