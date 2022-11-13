package com.example.Cukraszda;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Vezerlo {
    @Autowired
    private arRepo ARepo;
    @Autowired
    private felhasznaloRepo FRepo;
    @Autowired
    private sutiRepo SRepo;
    @Autowired
    private tartalomRepo TRepo;

    @GetMapping(path = "/")
    public String Fooldal()
    {
        return "index";
    }
    @GetMapping(path = "/index")
    public String Fooldall()
    {
        return "index";
    }

    @GetMapping("/u/sutik")
    public String Sutikoldal()
    {
        return "sutik";
    }

    @GetMapping("/u/kapcsolat")
    public String Kapcsolatoldal()
    {
        return "kapcsolat";
    }

    @GetMapping("/admin/uzenetek")
    public String UzenetekOldal(){
        return "uzenetek";
    }

}
