package com.example.Cukraszda;

import org.springframework.web.bind.annotation.*;

@RestController
public class sutiController {
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
        //.....
        return repo.save(suti);
    }

    @DeleteMapping("/sutik/{id}")
    void sutiTorles(@PathVariable Integer id){
        repo.deleteById(id);
    }
}

