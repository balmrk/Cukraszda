package com.example.Cukraszda.Models;

import com.example.Cukraszda.Models.felhasznaloClass;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "roles")
public class Role {
    @Id
    @GeneratedValue
    private Integer id;
    @Column(nullable = false, unique = true)
    private String name;
    @ManyToMany(mappedBy = "roles")
    private List<felhasznaloClass> users;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<felhasznaloClass> getUsers() {
        return users;
    }

    public void setUsers(List<felhasznaloClass> users) {
        this.users = users;
    }
}
