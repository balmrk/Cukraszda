package com.example.Cukraszda;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class Vezerlo
{
    @Autowired
    private arRepo ARepo;
    @Autowired
    private felhasznaloRepo FRepo;
    @Autowired
    private sutiRepo SRepo;
    @Autowired
    private tartalomRepo TRepo;

    @GetMapping("/home")
    public String user(Model model)
    {
        return "user";
    }

    @GetMapping("/")
    public String Fooldal()
    {
        return "index";
    }

    @GetMapping("/sutik")
    public String Sutikoldal()
    {
        return "sutik";
    }

    @GetMapping("/kapcsolat")
    public String Kapcsolatoldal()
    {
        return "kapcsolat";
    }

    @GetMapping("/admin/uzenetek")
    public String UzenetekOldal(){
        return "uzenetek";
    }

    @GetMapping("/regisztral")
    public String greetingForm(Model model)
    {
        model.addAttribute("reg", new felhasznaloClass());
        return "regisztral";
    }

    @Autowired
    private felhasznaloRepo userRepo;

    @PostMapping("/regisztral_feldolgoz")
    public String Regisztracio(@ModelAttribute felhasznaloClass user, Model model)
    {
        for (felhasznaloClass felh: userRepo.findAll())
            if (felh.getUsername().equals(user.getUsername()))
            {
                model.addAttribute("uzenet", "A felhasználónév már foglalt!");
                return "reghiba";
            }
        BCryptPasswordEncoder pwenc = new BCryptPasswordEncoder();
        user.setJelszo(pwenc.encode(user.getJelszo()));
        Role role = new Role();
        role.setId(3);
        role.setName("USER");
        List<Role> roleList = new ArrayList<Role>();
        roleList.add(role);
        user.setRoles(roleList);
        userRepo.save(user);
        model.addAttribute("id", user.getId());
        return "regjo";
    }
}
