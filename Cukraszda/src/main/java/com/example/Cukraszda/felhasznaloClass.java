package com.example.Cukraszda;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="felhasznalo")
public class felhasznaloClass {
    @Id
    private int id;
    @Column(name="felhasznalonev")
    private String felhasznalonev;
    @Column(name="jelszo")
    private String jelszo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFelhasznalonev() {
        return felhasznalonev;
    }

    public void setFelhasznalonev(String felhasznalonev) {
        this.felhasznalonev = felhasznalonev;
    }

    public String getJelszo() {
        return jelszo;
    }

    public void setJelszo(String jelszo) {
        this.jelszo = jelszo;
    }

    public felhasznaloClass(int id, String felhasznalonev, String jelszo) {
        this.id = id;
        this.felhasznalonev = felhasznalonev;
        this.jelszo = jelszo;
    }
}
