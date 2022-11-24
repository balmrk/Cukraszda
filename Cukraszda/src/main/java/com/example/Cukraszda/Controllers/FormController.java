package com.example.Cukraszda.Controllers;

import com.example.Cukraszda.Models.uzenetClass;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
/*
@Controller
public class FormController {
    @GetMapping("/kapcsolat")
    public String kapcsolatOldal(Model model){
        model.addAttribute("attr1", new uzenetClass());
        return "kapcsolat";
    }

    @PostMapping("/uzenet")
    public String urlapKuldes(@ModelAttribute uzenetClass uzenet, Model model){
        model.addAttribute("attr2", uzenet);
        System.out.println("===========================================");
        System.out.println("Az elküldött üzenet: " + uzenet.getContent());
        System.out.println("===========================================");
        return "kapcsolat";
    }
}*/
