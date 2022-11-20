package com.example.Cukraszda;

import com.example.Cukraszda.Models.felhasznaloClass;
import com.example.Cukraszda.Repositories.felhasznaloRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Collection;

@Service
@Transactional
public class CustomUserDetailsService implements UserDetailsService {
    @Autowired
    private felhasznaloRepo userRepo;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException{
        felhasznaloClass user = userRepo.findByUsername(userName)
                .orElseThrow(()-> new UsernameNotFoundException("User "+userName+" not found!"));
        return new org.springframework.security.core.userdetails.User(user.getUsername(),user.getJelszo(), getAuthorities(user));
    }

    private static Collection<? extends GrantedAuthority> getAuthorities(felhasznaloClass user){
        String[] userRoles = user.getRoles().stream().map((role)->role.getName()).toArray(String[]::new);
        Collection<GrantedAuthority> authorities = AuthorityUtils.createAuthorityList(userRoles);
        return authorities;
    }
}
