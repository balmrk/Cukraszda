package com.example.Cukraszda.Controllers;


import com.example.Cukraszda.Models.*;
/*
import com.example.Cukraszda.Models.sutiClass;
import com.example.Cukraszda.Models.tartalomClass;
import com.example.Cukraszda.Models.arClass;
import com.example.Cukraszda.Models.Role;
import com.example.Cukraszda.Models.felhasznaloClass;
import com.example.Cukraszda.Models.uzenetClass;
*/
import com.example.Cukraszda.Repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
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
    public String Fooldal() {
        return "index";
    }
/*
        @GetMapping("/kapcsolat")
        public String kapcsolatOldal(Model model) {
            model.addAttribute("asd", new uzenetClass());
            return "teszt";
        }

        @PostMapping("/uzenet")
        public String urlapKuldes(@ModelAttribute uzenetClass uzenet, Model model) {
            model.addAttribute("attr2", uzenet);
            System.out.println("===========================================");
            //System.out.println("Az elküldött üzenet: " + uzenet.getContent());
            System.out.println("===========================================");
            return "kapcsolat";
        }
*/
@GetMapping("/uzenet")
public String urlapForm(Model model) {
    model.addAttribute("msg", new uzenetClass());
    return "urlap";
}
    @PostMapping("/kuldes")
    public String urlapSubmit(@ModelAttribute uzenetClass UzenetOsztaly, Model model) {
        model.addAttribute("attr2", UzenetOsztaly);
        System.out.println("===========================================");
        System.out.println(UzenetOsztaly.getContent());
        System.out.println("===========================================");
        return "index";
    }

        @GetMapping("/sutik")
        public String Sutikoldal(Model model) {
            //model.addAttribute("termekek",SRepo.findAll());
            model.addAttribute("termekek", Termekek());
            return "sutik";
        }

        //Kapcsolt adatok a táblákból
        String Termekek() {
            String str = "";
            for (sutiClass suti : SRepo.findAll()) {
                str += suti.getId() + ";" + suti.getNev() + ";" + suti.getTipus() + ";" + suti.isDijazott();
                str += ";" + suti.getAr().getErtek() + ";" + suti.getAr().getEgyseg();
                try {
                    str += ";" + suti.getTartalom().getMentes();
                } catch (Exception e) {
                    str += ";-nincs tartalom-";
                }
                str += "\n\n\n";
            }

            return str;
        }

        @GetMapping("/admin/uzenetek")
        public String UzenetekOldal(Model model) {
            model.addAttribute("uzenetek", URepo.findAll());
            return "uzenetek";
        }

        @GetMapping("/regisztral")
        public String greetingForm(Model model) {
            model.addAttribute("reg", new felhasznaloClass());
            return "regisztral";
        }

        @GetMapping("/login")
        public String Login() {
            return "login";
        }

        @PostMapping("/regisztral_feldolgoz")
        public String Regisztracio(@ModelAttribute felhasznaloClass user, Model model) {
            for (felhasznaloClass felh : FRepo.findAll())
                if (felh.getUsername().equals(user.getUsername())) {
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
}
/*
    @GetMapping("/kapcsolat")
    public String Kapcsolatoldal(Model model)
    {
        model.addAttribute("mess", new uzenetClass());
        return "kapcsolat";
    }

    @PostMapping("/uzenet_feldolgoz")
    public String Uzenetkuldes(@Valid @ModelAttribute uzenetClass mess, BindingResult bindingResult, Model model)
    {
        if (bindingResult.hasErrors()) {
            model.addAttribute("mess", new uzenetClass());
            return "kapcsolat";
        }
        //üzenet feladója
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String neve = auth.getName();
        if (neve.equals("anonymousUser")) neve="Vendég";
        mess.setSender(neve);

        //küldés ideje
        LocalDateTime ido = LocalDateTime.now();
        DateTimeFormatter format = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedIdo = ido.format(format);
        mess.setKuldes_ideje(formattedIdo);

        //mentés adatbázisba
        URepo.save(mess);

        return "redirect:/";
    }
 */