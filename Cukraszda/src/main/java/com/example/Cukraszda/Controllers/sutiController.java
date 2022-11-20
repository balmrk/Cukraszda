package com.example.Cukraszda.Controllers;
import com.example.Cukraszda.Exceptions.sutiClassNotFoundException;

import com.example.Cukraszda.Exceptions.sutiClassNotFoundException;
import com.example.Cukraszda.Models.sutiClass;
import com.example.Cukraszda.Repositories.sutiRepo;
import org.springframework.web.bind.annotation.*;

@RestController
class sutiController {
    private final sutiRepo repo;

    sutiController(sutiRepo repo) {
        this.repo = repo;
    }

    @GetMapping("/sutik/all")
    Iterable<sutiClass> mindetKiad() {
        return repo.findAll();
    }

    @GetMapping("/sutik/{id}")
    sutiClass egyetKiad(@PathVariable Integer id) {
        return repo.findById(id)
                .orElseThrow(() -> new sutiClassNotFoundException(id));
    }

    @PostMapping("/sutik")
    sutiClass sutitHozzaad(@RequestBody sutiClass suti) {
        return repo.save(suti);
    }

    @PutMapping("/sutik/{id}")
    sutiClass sutiModosit(@RequestBody sutiClass suti, @PathVariable Integer id) {
        return repo.findById(id)
                .map(Suti -> {
                    Suti.setNev(suti.getNev());
                    Suti.setTipus(suti.getTipus());
                    Suti.setDijazott(suti.isDijazott());
                    return repo.save(Suti);
                })
                .orElseGet(()->{
                    suti.setId(id);
                    return repo.save(suti);
                });
    }

    @DeleteMapping("/sutik/{id}")
    void sutiTorles(@PathVariable Integer id){
        repo.deleteById(id);
    }
}

