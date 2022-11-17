package com.example.Cukraszda;

import net.bytebuddy.asm.Advice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
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
    @Autowired
    private uzenetRepo URepo;

    @GetMapping("/")
    public String Fooldal()
    {
        return "index";
    }

    @GetMapping("/sutik")
    public String Sutikoldal(Model model)
    {
        model.addAttribute("termekek",SRepo.findAll());
        return "sutik";
    }

    @GetMapping("/admin/uzenetek")
    public String UzenetekOldal(Model model){
        model.addAttribute("uzenetek",URepo.findAll());
        return "uzenetek";
    }

    @GetMapping("/regisztral")
    public String greetingForm(Model model)
    {
        model.addAttribute("reg", new felhasznaloClass());
        return "regisztral";
    }

    @GetMapping("/login")
    public String Login()
    {
        return "login";
    }

    @PostMapping("/regisztral_feldolgoz")
    public String Regisztracio(@ModelAttribute felhasznaloClass user, Model model)
    {
        for (felhasznaloClass felh: FRepo.findAll())
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
        FRepo.save(user);
        model.addAttribute("id", user.getId());
        return "regjo";
    }

    @GetMapping("/kapcsolat")
    public String Kapcsolatoldal(Model model)
    {
        model.addAttribute("mess", new uzenetClass());

        return "kapcsolat";
    }

    @PostMapping("/uzenet_feldolgoz")
    public String Uzenetkuldes(@ModelAttribute uzenetClass msg, Model model)
    {
        //üzenet feladója
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String neve = auth.getName();
        if (neve.equals("anonymousUser")) neve="Vendég";
        msg.setSender(neve);

        //küldés ideje
        LocalDateTime ido = LocalDateTime.now();
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedIdo = ido.format(format);
        System.out.println(formattedIdo);
        msg.setKuldes_ideje(formattedIdo);

        //mentés adatbázisba
        URepo.save(msg);

        return "redirect:/";
    }
}
